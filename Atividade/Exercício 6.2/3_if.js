const readline = require("readline-sync");

let nome = readline.question("Digite o Nome do doador: ");
let idade = readline.questionInt("Digite a idade do doador: ");
let primeiraDoacao = readline.question("Primeira doação de sangue? (true/false): ");


primeiraDoacao = primeiraDoacao.toLowerCase() === "true";


let apto = false;


if (idade >= 18 && idade <= 69) {
    if (idade >= 60 && idade <= 69 && primeiraDoacao === true) {
        apto = false;
    } else {
        apto = true;
    }

} else {
    apto = false;
}

if (apto) {
    console.log(`${nome} está apto para doar sangue.`);
} else {
    console.log(`${nome} não está apto para doar sangue.`);
}

