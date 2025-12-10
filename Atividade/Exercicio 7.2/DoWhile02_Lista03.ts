const leia = require("readline-sync");

let numero;
let continua = true
let soma = 0;
let i = 0;
let media 

 do {
    numero = leia.questionInt("Escreva um numero: ");

    if (numero === 0) {
        continua = false;
    } else if(numero % 3 ===0) {
        soma += numero;
        i++
    }
} while (continua) 
if (i>0) {
    media = soma/i
    console.log("numeros multiplos de 3: " + i);
    console.log("Media dos multiplos de 3: " + media);
}else{
    console.log("nenhum numero multiplo de 3");
}