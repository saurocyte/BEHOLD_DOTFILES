function configure
    set cfg './.config/'
	set cfg './.config/'
    
    set keys 'i3' 'nvim' 'fish'
    set vals (string join "" $cfg 'i3/config') (string join "" $cfg 'nvim/init.vim') (string join "" $cfg 'fish/config.fish')

	set name $argv[1]

   	if set -l index (contains -i $name $keys)
    	nvim $key $vals[$index]
   	else
       	echo 'Config missing'
    end
end
