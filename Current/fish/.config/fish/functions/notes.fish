function notes
	argparse 'n/new' 't/type=' 'l/last' 'e/editor=' 's/sync' -- $argv

	# Default values
	if [ ! $_flag_t ]
		set _flag_t "single"
	end

	set notes '/home/boi/.notes'
	set last_file "$HOME/.config/fish/functions/.notes_last_path"
	set new_note ""
	set ed $EDITOR

	# Create new note
	if [ $_flag_n ]
		set new_note $notes'/'$argv[1]
		if [ -d $new_note ]
			echo "Note collection with same name already exists!"
			return
		end
		if [ -f $new_note ]
			echo "Note with same name already exists!"
			return
		end
		if [ $_flag_t = "collection" ]
			mkdir $new_note
			echo "Note collection named $argv[1] created!"
		else 
			touch $new_note
			echo "Note named $argv[1] created!"
		end
		return
	end

	# Sync with remote repo
	if [ $_flag_s ]
		pushd $notes
		git add *
		git commit -m (date) > /dev/null
		echo "Syncing..."
		git push origin master > /dev/null
		echo "Sync complete!"
		return
	end

	# Edit note
	if [ $_flag_l ]
		set new_note (cat $last_file)
	else if [ $argv ]
		set new_note $notes'/'$argv[1]
		if [ ! -e $new_note ]
			echo "Note does not exist!"
			read -P "Create new note? [y/n]" confirm
			if [ $confirm = "y" ]
				read -P "Note type: [single/collection]" type
				if [ $type = "single" ]
					touch $new_note
				else
					mkdir $new_note
				end
			else
				echo "Bye then!"
				return
			end
		end
	else
		set new_note $notes'/'(ls -I "*fls" -I "*aux" -I "*log" -I "*gz" -I "*fdb*" -I "*preamble*" $notes | sort -d | fzf)
	end

	# Save last dir
	touch $last_file
	echo $new_note > $last_file

	# Select editor
	if [ $_flag_e ]
		set ed $_flag_e
	end

	# Execute
	$ed $new_note
end
