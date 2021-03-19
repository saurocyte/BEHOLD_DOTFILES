function rearrange
    echo $argv[1] | awk 'BEGIN { FS="-";OFS="." } { print $3,$2,$1 }'
end

function week
    if test -z "$argv"
        set argv + 0
    end
    set weekday (date --date=now +%u)
    set weekstart (date --date="now - "(math $weekday - 1)" days" -I)
    set new_weekstart (date --date="$weekstart $argv[1] "(math "7 * $argv[2]")" days" -I)
    set new_weekend (date --date="$new_weekstart + 6 days" -I)
    echo (rearrange $new_weekstart) - (rearrange $new_weekend)
end

