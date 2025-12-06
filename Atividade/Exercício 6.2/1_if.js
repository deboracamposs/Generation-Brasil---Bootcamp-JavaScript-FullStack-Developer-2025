const readline = require("readline-sync");

let numeroA = Number(readline.question("Digite o numero A: "));
let numeroB = Number(readline.question("Digite o numero B: "));
let numeroC = Number(readline.question("Digite o numero C: "));

let soma = numeroA + numeroB;

if ( soma > numeroC ){
    console.log(`${numeroA} + ${numeroB} = ${soma} > ${numeroC}\nA soma de A + B é maior do que C.`);
} else if ( soma < numeroC ){
    console.log(`${numeroA} + ${numeroB} = ${soma} < ${numeroC}\nA soma de A + B é menor do que C.`);
} else {
    console.log(`${numeroA} + ${numeroB} = ${soma} = ${numeroC}\nA soma de A + B é igual a C.`) ;
}

