
// let array = [1,7,18,3,7,10,18];
// //One method Using Set
// // Remove duplicate numbers using a Set
// //set automatically removes duplicates
// let uniqueNumbers1 = [...new Set(array)];   //Spread operator (...) converts the Set back into an array
// console.log(uniqueNumbers1); // Output: [ 1, 7, 18, 3, 10 ]


let numbers = [1,7,18,3,7,10,18];
let uniqueNumbers = [];
let seen = {};

numbers.forEach((num) => {
  if (!seen[num]) {
    uniqueNumbers.push(num);
    seen[num] = true;
  }
});
console.log(uniqueNumbers); // Output: [ 1, 7, 18, 3, 10 ]
