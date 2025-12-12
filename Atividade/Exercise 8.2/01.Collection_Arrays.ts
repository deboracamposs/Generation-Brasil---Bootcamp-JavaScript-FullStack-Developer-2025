import leia = require("readline-sync");

const cores: Array<string> = new Array<string>();

for (let i = 0; i < 5; i++) {
    let cor = leia.question(`digite uma cor ${i + 1}: `);
    cores.push(cor)
}
console.log(`Lista das cores escolhidas ${cores}`);
console.log(`Lista das cores ordenadas: ${cores.sort()}`);