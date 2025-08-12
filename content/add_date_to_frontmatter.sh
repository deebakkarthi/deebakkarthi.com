#!/bin/zsh
my_array=()
while IFS= read -r line; do
 my_array+=( "$line" )
done < <(rg --multiline "^---$\n[tT]itle:.*\n---" -l)

for item in "${my_array[@]}"; do
    file_time=$(gstat -c "%w" "/Users/deebakkarthi/Documents/sb/4_archive/Old_SB/4_Archive/old_obsidian_vault/content/$item" | sed 's/ /T/;s/ //')
    file_time="date: $(gdate --iso-8601=seconds -d "$file_time")"
    echo $file_time
    gsed -i '/\(^[Tt]itle:.*$\)/a '"${file_time}"'\' $item
done

