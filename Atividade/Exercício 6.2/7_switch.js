const readline = require("readline-sync");

let saldo = 1000.00; 

let operacao = readline.questionInt("Operacao (1-Saldo | 2-Saque | 3-Deposito): ");
let valor = 0;

if (operacao === 2 || operacao === 3) {
    valor = readline.questionFloat("Valor: ");
}

switch (operacao) {

    case 1:
        console.log("Operacao - Saldo");
        console.log(`Saldo: R$ ${saldo.toFixed(2)}`);
        break;

    case 2:
        console.log("Operação - Saque");
        if (valor > saldo) {
            console.log("Saldo Insuficiente!");
        } else {
            saldo -= valor;
            console.log(`Novo Saldo: R$ ${saldo.toFixed(2)}`);
        }
        break;

    case 3:
        console.log("Operação - Depósito");
        saldo += valor;
        console.log(`Novo Saldo: R$ ${saldo.toFixed(2)}`);
        break;

    default:
        console.log("Operação Inválida!");
        break;
}