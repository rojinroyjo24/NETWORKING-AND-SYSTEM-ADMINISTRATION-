<<comment
QUESTION:
Write a Shell program to find the area and circumference of a circle
comment

echo "Enter the radius:"
read r
area=`echo 3.14 \* $r \* $r| bc`
cir=`echo 2 \* 3.14 \* $r| bc `
echo "Area : $area"
echo "Circumference : $cir"

<<comment
OUTPUT:
mlm@mlm-H81:~/Desktop/ro/shell$ chmod +x circle.sh
mlm@mlm-H81:~/Desktop/ro/shell$ ./circle.sh
Enter the radius:
5
Area : 78.50
Circumference : 31.40
comment

