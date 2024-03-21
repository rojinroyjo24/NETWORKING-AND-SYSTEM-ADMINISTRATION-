<<comment
QUESTION:
Write a Shell program to check the given number and its reverse are same
comment

read num
reverse=$(echo "$num" | rev)
if [ "$num" -eq "$reverse" ]; then
echo "$num is same when reversed."
else
echo "$num is not same when reversed."
fi

<<comment
OUTPUT:

mlm@mlm-H81:~/Desktop/ro/shell$ chmod +x reverse.sh
mlm@mlm-H81:~/Desktop/ro/shell$ ./reverse.sh
555
555 is same when reversed.
comment
