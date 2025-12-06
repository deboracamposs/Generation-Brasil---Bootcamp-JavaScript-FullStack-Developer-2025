const readline = require("readline-sync");

let salarioBruto = Number(readline.question("Informe seu salario bruto: "));
let adicionalNoturno = Number(readline.question("Informe o adicional noturno: "));
let horasExtras = Number(readline.question("Informe as horas extras: "));
let descontos = Number(readline.question("Valor dos descontos: "));

let salarioLiquido = salarioBruto + adicionalNoturno + (horasExtras * 0,5) - descontos;
console.log("O salário líquido é de: ", salarioLiquido);