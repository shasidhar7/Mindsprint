
## Function to add two numbers

add_numbers() {
    sum=$(( $1 + $2))
    echo "sum of $1 and $2 is: $sum"
}

add_numbers 10 20

## Function to check if a file exists

check_file() {
    if [ -f "$1" ]; then
        echo "file '$1' exists"
    else 
        echo "File '$2' does not exists."

    fi
}

check_file "file.txt"