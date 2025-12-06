const readline = require("readline-sync");

let number = (readline.questionInt("Digite um numero: "));

if (number % 2 === 0){
    console.log(`O numero ${number} é par.`);
} else {
    console.log(`O numero ${number} é impar.`);
}

if (number <= 0){
    console.log(`O numero ${number} é negativo.`);
} else {
    console.log(`O numero ${number} é positivo.`);
}


