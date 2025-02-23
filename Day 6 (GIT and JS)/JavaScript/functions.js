
console.log("John Doe")
data()  // can't call the function without declaring, so will get error
function greeting(name){
    return 'Welcome '+name;
}

function print(){
    console.log("Hello World..!");
}

function cube(n){
    return n*n*n;
}

//function variable
const data = function(){
    console.log('Data Fetched successfully')
}

print()
const result = greeting("Shasi")    //store result in variable
console.log(result)
console.log(cube(2))