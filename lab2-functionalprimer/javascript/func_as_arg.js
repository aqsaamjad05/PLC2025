//Create list of ints from a to b, Haskell equivalent [a..b]
function arrFunc(a, b){
    let arr = [];
    for (let i = a; i<=b; i++) {
        arr.push(i);
    }
    return arr;    
}

function applicatorFunc(inpFunc, a, b, s){
    const arr = inpFunc(a, b);        
        let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
    if(s=='s'){
        return sum;
    }
    else{        
        return sum/ arr.length;
    }
}

let x = applicatorFunc(arrFunc, 1, 5, 's');
console.log(x);