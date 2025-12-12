import leia = require('readline-sync');

const numeros: Set<number> = new Set<number>([2, 5, 1, 3, 4, 9, 7, 8, 10, 6]);

let number = leia.questionInt(`digite o numero que voce deseja encontrar: `);

let encontrado = false;


for (const n of numeros) {

    
    if (n === number) {
        encontrado = true;
        break;
    } 
}           


if (encontrado) {
    
    console.log(`O número ${number} foi encontrado!`);
}else{
    console.log(`O número ${number} nao foi encontrado!`);

}