const readline = require("readline-sync");

let numero1 = parseFloat(readline.question("Digite o 1º número: "));
let numero2 = parseFloat(readline.question("Digite o 2º número: "));
let operacao = readline.questionInt("Operação (1-Soma, 2-Subtração, 3-Multiplicação, 4-Divisão): ");

let resultado;

switch (operacao) {
    case 1:
        resultado = numero1 + numero2;
        console.log(`\n${numero1} + ${numero2} = ${resultado}`);
        break;
    case 2:
        resultado = numero1 - numero2;
        console.log(`\n${numero1} - ${numero2} = ${resultado}`);
        break;
    case 3:
        resultado = numero1 * numero2;
        console.log(`\n${numero1} * ${numero2} = ${resultado}`);
        break;
    case 4:
        if (numero2 === 0) {
            console.log("\nErro! Divisão por zero.");
        } else {
            resultado = numero1 / numero2;
            console.log(`\n${numero1} / ${numero2} = ${resultado}`);
        }
        break;
    default:
        console.log("\nOperação Inválida!");
    }