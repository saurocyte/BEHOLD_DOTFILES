function week
    set weekday (date --date=now +%u)
    set weekstart (date --date="now - "(math $weekday - 1)" days" -I)
    set new_weekstart (date --date="$weekstart $argv[1] "(math "7 * $argv[2]")" days" -I)
    set new_weekend (date --date="$new_weekstart + 6 days" -I)
    echo "$new_weekstart - $new_weekend"
end

