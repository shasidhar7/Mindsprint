
// Function to calculate the average of an array of numbers
function calculateAverage(numbers) {
    const sum = numbers.reduce((acc, num) => acc + num, 0);
    return sum / numbers.length;
}

// Prompt the user to enter numbers separated by commas
let input = prompt('Enter numbers separated by commas (e.g., 1,2,3,4,5):');

// Split the input string into an array of numbers
let numbers = input.split(',').map(Number);

// Calculate the average
let average = calculateAverage(numbers);

// Display the result
alert('Average: ' + average);
