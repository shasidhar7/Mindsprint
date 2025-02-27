echo "Hello From Bash"

name="Shasi"
echo "Hello $name"

salary=50000
echo "salary $salary"


echo "salary $((salary*20))"

num1=10
num2=20
echo "Sum $((num1+num2))"


# Store Array values in variables
numbers=(10 20 30 40 55 60)
echo "First Number ${numbers[0]}"
echo "Fourth Number ${numbers[3]}"
echo "Out of range Number ${numbers[7]}"

echo "Length of array is: ${#numbers[@]}"

names=("shasi" "Dhoni" "Sachin" "Raina")
echo "First Name: ${names[0]}"

