const readline = require("readline-sync");

let nota1 = Number(readline.question("Digite a primeira nota: "));
let nota2 = Number(readline.question("Digite a segunda nota: "));  
let nota3 = Number(readline.question("Digite a terceira nota: "));
let nota4 = Number(readline.question("Digite a quarta nota: "));

let soma = nota1 + nota2 + nota3 + nota4;
console.log("A soma das notas é = ", soma);
let media = soma / 4;
console.log("A média total é = ", media);

