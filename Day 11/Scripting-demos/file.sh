## Creating file with some content
echo "I am Just Checking" > file.txt

## Appending text into a file
# echo "Appending content" >> file.txt

## Reading a file
# cat file.txt

## Deleting file
# rm file.txt


## Checking if the file is exists  or not
if [ -f "file.txt" ]; then
    echo "File Exists"
else 
    echo "File doesnot exists"
fi