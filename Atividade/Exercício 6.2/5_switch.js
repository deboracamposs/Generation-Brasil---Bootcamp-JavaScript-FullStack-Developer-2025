const readline = require("readline-sync");

let nome = readline.question("Nome do colaborador: ");
let codigo = readline.questionInt("Cargo (1 a 6): ");
let salario = parseFloat(readline.question("Salario: R$ "));

let cargo = "";
let percentual = 0;

switch (codigo) {
    case 1:
        cargo = "Gerente";
        percentual = 0.10;
        break;
    case 2:
        cargo = "Vendedor";
        percentual = 0.07;
        break;
    case 3:
        cargo = "Supervisor";
        percentual = 0.09;
        break;
    case 4:
        cargo = "Motorista";
        percentual = 0.06;
        break;
    case 5:
        cargo = "Estoquista";
        percentual = 0.05;
        break;
    case 6:
        cargo = "Técnico de TI";
        percentual = 0.08;
        break;
    default:
        console.log("Código de cargo invalido!");
        process.exit();
}

let novoSalario = salario + (salario * percentual);

console.log(`\nNome do colaborador: ${nome}`);
console.log(`Cargo: ${cargo}`);
console.log(`Salário: R$ ${novoSalario.toFixed(2)}`);