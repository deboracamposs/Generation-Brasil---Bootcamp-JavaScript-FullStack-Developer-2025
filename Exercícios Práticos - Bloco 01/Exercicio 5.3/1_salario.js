const readline = require("readline-sync");

let salario = readline.questionInt("Digite o salario: ");
console.log("Salario informado: ", salario);
let abono = readline.questionInt("Digite o abono: ");
console.log("Abono informado: ", abono);

let novoSalario = salario + abono;
console.log("A soma do salario + abono é de: ", novoSalario);
