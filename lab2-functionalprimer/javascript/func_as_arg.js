// Create array from a to b, similar to [a..b] in Haskell
function arrFunc(a, b){
    let arr = [];
    for (let i = a; i <= b; i++) {
        arr.push(i);
    }
    return arr;    
}

// Takes a, b, and a selector char ('s' for sum, otherwise average)
function applicatorFunc(a, b, s){
    const arr = arrFunc(a, b);
    let sum = arr.reduce((acc, curr) => acc + curr, 0);
    
    if(s === 's'){
        return sum;
    } else {
        return sum / arr.length;
    }
}

// Example usage:
let a = 3;
let b = 10;
let operation = 'a'; // 's' for sum, anything else for average

let result = applicatorFunc(a, b, operation);
console.log("Result:", result);
