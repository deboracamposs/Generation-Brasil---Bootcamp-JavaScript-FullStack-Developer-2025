const leia = require("readline-sync");
let numero
let encontrado = false;

const list = [2, 5, 1, 3, 4, 9, 7, 8, 10, 6]
numero = leia.questionInt ("Digite um numero: ");

for(let i = 0; i < list.length; i++){
    if (list[i] === numero) {
        console.log("numero encontrado na posição: " + i);
        encontrado = true;
        break;
    }
}
if (!encontrado){
    console.log("Nao foi encontrado");   
}