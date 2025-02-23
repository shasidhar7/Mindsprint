let name = 'test'   //global variable

function hello(){
    if(true){
        let a = 10;
        const b = 20;
        var c = 30;

        console.log('Inside if block let',a)
        console.log('Inside if block const',b)
        console.log('Inside if block var',c)
    }
    // console.log('Outside if block let',a)
    // console.log('Outside if block const',b)
    console.log('Outside if block var',c)
}

hello()

function myFunction(){
    let a = 10;
    const b = 20;
    var c = 30;

    console.log('Inside function let',a)
    console.log('Inside function const',b)
    console.log('Inside function var',c)
}
myFunction()

//We can't access functional variables outside the function
// console.log('output function let',a)
// console.log('Output function const',b)
// console.log('Output function var',c)
