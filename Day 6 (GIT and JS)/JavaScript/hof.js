const array = [1,2,3,4,5,6,7,8,9,10];

//I want to create new array by multiplying all elements using 3

//One way
// const resultArray =[];
// for(let num of array){
//     resultArray.push(num*3);
// }
// console.log(resultArray)


//another way
const newArray = array.map((num)=>num*3);
console.log(newArray)

//even numbers
const evenArray = array.filter((num)=>num%2===0);
console.log(evenArray)

//if first match found it will return that number
//if no match found then it will return undefined
const found = array.find((num)=>num===10);
console.log(found ? 'Found '+found: 'Not found');

//find index of match (if found then return index of that hnumber
//if not found then it will return -1
const foundIndex = array.findIndex((num)=>num===9);
console.log(foundIndex ? 'Found '+foundIndex: 'Not found');


//find the length of 2s in arr
const arr = [1,2,3,2,4,5,2,6,7,2,8,2]
const count = arr.filter((num)=>num===2);
console.log('length of arr:',count.length);


//print individual elements use for each
arr.forEach(num=>console.log(num))

//checking the conditions
result = [35,67,89,65,94];
console.log(result.every(num=>num>=35)) //true if all condition satisfies
console.log(result.some(num=>num>=95))  //true if any one condition satisfy

console.log([[1,2],2,[3,4,5]].flat())   //concat the all the elements

console.log(arr.includes(11))   //if the given number is exists it will prints true otherwise false

console.log("Shasidhar Karumuri".indexOf('s'));     //gives the index position

console.log("Shasidhar Karumuri".toLowerCase().indexOf('s'));   //convert to lowercase and check for index

const myArray = [10,20,30,40,50];
console.log(myArray.slice(2));  //starts from 2 till last
console.log(myArray.slice(2,4));  //starts from 2 till index 3

//lets insert new element in between
//60 between 30 and 40
myArray.splice(3,0,60,70);  //start index, delete count, no of elements
console.log(myArray)

//delete 60
myArray.splice(3,1);
console.log('After delete', myArray)

//replace 70 by 35
myArray.splice(3,1,35);
console.log('After replace', myArray)
