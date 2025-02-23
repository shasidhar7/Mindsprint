const array = [];   //empty array
const array1 = [1,2,3,4,5,6,7];
const array2 = new Array(4);    //array with 4

//length property
console.log(array.length)   //0
console.log(array1.length)  //7
console.log(array2.length)  //4

array.push(10);
array.push(20);
array.push(30);     //push element at last index
console.log('After Push', array)

array.unshift(5)
array.unshift(2);   //add element at first index
console.log('After unshift', array)

console.log(array.pop())    //remove last element
console.log('After pop', array);

console.log(array.shift())  //remove first element
console.log('After Shift', array)

