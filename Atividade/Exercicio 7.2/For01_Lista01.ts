const leia = require("readline-sync");

let n1,n2

n1 = leia.questionInt("digite o primeiro valor: ");
n2 = leia.questionInt("digite o segundo valor: ");

if (n1 >= n2) {
    console.log("Intervalo invalido");
    
}
for (let i = n1; i <= n2; i++){
    if (i % 3 === 0 && i % 5 === 0) {
        console.log(i + " é multiplo de 3 e 5");
    }
}