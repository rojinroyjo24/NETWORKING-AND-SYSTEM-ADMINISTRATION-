INPUT_FILE="marks.txt"
if [[ ! -f "$INPUT_FILE" ]]; then
echo "Input file not found!"
exit 1
fi
declare -A grades
while read line; do
name=$(echo "$line" | cut -d ',' -f 1)
grade=$(echo "$line" | cut -d ',' -f 2)
grades["$name"]=$grade
done < "$INPUT_FILE"
for name in "${!grades[@]}"; do
echo "$name: ${grades[$name]}"
done

<<comment
create a file marks.txt

Rojin:90%
visal:98%
Zaina:80%

OUTPUT

mlm@mlm-desktop:~/Desktop/Rojin/NW LAB$ chmod +x grade.sh
mlm@mlm-desktop:~/Desktop/Rojin/NW LAB$ ./grade.sh
Rojin:90%: Rojin:90%
visal:98%: visal:98%
Zaina:80%: Zaina:80%
comment
