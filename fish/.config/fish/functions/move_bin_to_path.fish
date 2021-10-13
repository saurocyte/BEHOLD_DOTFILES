function uninstall
    set last_bin_name (cat .last_bin_name)
    sudo rm /bin/$last_bin_name
end

function move_bin_to_path
    uninstall
    set bin_name $argv[1]
    set new_bin_name $argv[2]
    set hashbang $argv[3]
    echo -e $hashbang | command cat - $bin_name > temp_$new_bin_name
    chmod +x temp_$new_bin_name
    sudo mv temp_$new_bin_name /bin/$new_bin_name
    echo $new_bin_name > .last_bin_name
end
