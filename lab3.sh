#!/bin/bash

project_root="$(dirname "${BASH_SOURCE[0]}")"

files_names=("Victor.txt" "Klishch.txt");
group="К-406"
current_time=$(date);
email="viktorklishch6@gmail.com";

email_regex="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}"

mkdir -p "$project_root"/К.В.В/Друга;
mkdir -p "$project_root"/К.В.В/Третя;

cd "$project_root"/К.В.В/Друга;

for files in "${files_names[@]}"; do
    touch "$files";
    echo "$group, $current_time, $email" > "$files";

    if grep -qE "$email_regex" "$files"; then
    	echo "Електронна адреса знайдена у файлі $files"
    else
    	echo "Електронна адреса не знайдена у файлі $files"
    fi
done

cd ../..;

cp "$project_root"/К.В.В/Друга/"${files_names[0]}" "$project_root";
cp "$project_root"/К.В.В/Друга/"${files_names[1]}" "$project_root";








