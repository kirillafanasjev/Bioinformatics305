#!/bin/bash

# i. Проверка, передан ли аргумент
if [ -z "$1" ]; then
    echo "No project name provided"
    exit 1
fi

# ii. Создаем папку с именем проекта
mkdir "$1"

# iii. Создаем подпапки внутри проекта
mkdir "$1/data"
mkdir "$1/scripts"
mkdir "$1/results"

# iv. В папке data создаем raw_data.txt и меняем права (только владелец может читать/писать)
touch "$1/data/raw_data.txt"
chmod 600 "$1/data/raw_data.txt"

# v. В папке scripts создаем run_analysis.sh, делаем исполняемым и записываем shebang + echo
touch "$1/scripts/run_analysis.sh"
chmod +x "$1/scripts/run_analysis.sh"
echo "#!/bin/bash" > "$1/scripts/run_analysis.sh"
echo "echo \"Hello from \$1\"" >> "$1/scripts/run_analysis.sh"

echo "Project $1 created successfully!"
