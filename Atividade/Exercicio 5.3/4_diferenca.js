const readline = require("readline-sync");

let n1 = Number(readline.question("Digite o numero 1: "));
let n2 = Number(readline.question("Digite o numero 2: "));  
let n3 = Number(readline.question("Digite o numero 3: "));
let n4 = Number(readline.question("Digite o numero 4: "));

let diferenca =  (n1 * n2) - (n3 * n4);
console.log("A diferença é de: ", diferenca);