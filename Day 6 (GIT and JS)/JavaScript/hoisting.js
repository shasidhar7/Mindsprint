console.log(a)  //undefined
var a = 10
console.log(a)  //10

// console.log(b)
// let b = 30
// console.log(b)


//if you want to use for callback you can use anonymous
const test = function(){
    console.log('Test Triggered 1');
}

//for debugging, for recursion, use named function
const myFunction = function test(){
    console.log('Test Triggered 2');
}

test()
myFunction()