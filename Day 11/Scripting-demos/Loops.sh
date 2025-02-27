# For loop
# for i in {1..5}
# do 
#     echo "Number: $i"
# done


# While loop
count=1
while [ $count -le 5 ]
do
    echo "Iteration: $count"
    ((count++))
done