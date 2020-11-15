set notes_dir '/home/boi/.notes'
set last_file "$HOME/.config/fish/functions/.notes_last_path"
set new_file ""
set ed $EDITOR
set not_readable_patterns '(.*\.aux$|.*\.fls$|.*\.pdf$|.*\.tex$|.*\.gz$|.*\.log$|preamble.*|.*latexmk$)'

function select_file
	### 1: ignorable_patterns

	ls | sed -E -e "/$argv[1]/d" | sort -d | fzf
end

function open_file
    ### 1: file to open 

    if string match "*md" $file
        nvim $argv[1]
    else if [ -d $file ]
        firefox $argv[1]/*.pdf
    else
        firefox $argv[1]
    end
end

function create_file
    ### 1: file to create

    if [ -d $argv1 ]
        echo "Note collection with same name already exists!"
        return
    end
    if [ -f $argv[1] ]
        echo "Note with same name already exists!"
        return
    end
    if [ $_flag_t = "collection" ]
        mkdir $argv[1]
        echo "Note collection named $argv[1] created!"
    else 
        touch $argv[1]
        if [ -f (dirname $argv[1])'/'template.tex ]
            cat (dirname $argv[1])'/'template.tex >> $argv[1]
        end
        echo "Note named $argv[1] created!"
    end
end

function sync
    ### 

    git add *
    git commit -m (date) > /dev/null
    echo "Syncing..."
    git push origin master > /dev/null
    echo "Sync complete!"
end

function notes
	argparse 'n/new' 't/type=' 'e/editor=' 'o/open' 'l/last' 's/sync' -- $argv
    ### --- n args ---
    ### """New note"""
    ### 1: new file name

    ### --- t args ---
    ### """Used in conjunction with -n"""
    ### 1: note type ("single"/"collection")

    ### --- e args ---
    ### """Edit existing note"""
    ### 1: editor
    ### 2: part of note name

    ### --- o args ---
    ### """View existing note"""
    ### 1: new filename

    ### --- l args ---
    ### """Open last note"""

    ### --- s args ---
    ### """Sync notes with remote"""

	# Default values
	if [ ! $_flag_t ]
		set _flag_t "single"
	end
	pushd $notes_dir

	if [ $_flag_o ]
        open_file (select_file $not_readable_patterns)
		return
	end
	if [ $_flag_n ]
		create_file $argv[1]
		return
	end
	if [ $_flag_s ]
        sync
        return
	end

	if [ $_flag_l ]
		set new_file (cat $last_file)
	else if [ $argv ]
		# Kinda sorta complete filenames
		set new_file (find -O1 . -regex ".*$argv[1].*" | sed -E -e "/$not_readable_patterns/d" | sort)
		# If completion failed
		if [ -z $new_file ]
			set new_file $argv[1]
		end
		if [ ! -e $new_file ]
			echo "Note does not exist!"
			read -P "Create new note? [y/n]" confirm
			if [ $confirm = "y" ]
				read -P "Note type: [single/collection]" type
				if [ $type = "single" ]
					touch $new_file
				else
					mkdir $new_file
				end
			else
				echo "Bye then!"
				return
			end
		end
	else
		set new_file (select_file $not_readable_patterns)
	end

	# Save last dir
	touch $last_file
	echo $new_file > $last_file

	# Select editor
	if [ $_flag_e ]
		set ed $_flag_e
	end

	# Open
	$ed $new_file
end
