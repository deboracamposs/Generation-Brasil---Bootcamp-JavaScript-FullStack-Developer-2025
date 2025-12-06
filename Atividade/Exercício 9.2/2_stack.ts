import {Stack} from './Stack';
import readline = require('readline-sync');

let opcao: number;
const fila = new Stack<string>();
 
do {
  console.log('\n******* Bem vinde a Biblioteca da Generation Brasil 📚 *******');
  console.log('1 - Adicionar um novo livro na colecao');
  console.log('2 - Listar todos os exemplares');
  console.log('3 - Retirar um exemplar da biblioteca');
  console.log('0 - Sair');
  console.log('******************************');

  opcao = readline.questionInt('\nEscolha uma das opcoes acima: ');

  switch (opcao) {
    case 1: 
        let nome = readline.question('\nDigite o nome do livro: ');
        fila.push(nome);
        console.log(`Exemplar ${nome} adicionado na biblioteca.`);
        break;
        
    case 2: 
        if (fila.isEmpty()) {
            console.log('\nNão há livros na biblioteca.');
        } else {
            console.log('\nLivros na biblioteca:');
            fila.printStack();
            }
        break;

    case 3:
        const livroRetirado = fila.pop();
        if (livroRetirado === undefined) {
            console.log('\nNao ha livros na biblioteca.');
        } else {
            console.log(`O livro ${livroRetirado} foi retirado para leitura.`);
        }
        break;

    case 0:
        console.log('\nEncerrando o atendimento. Ate logo.');
        break;

    default:
        console.log('\nOpcao invalida. Tente novamente.');
        break;
  } 

}
    while(opcao !== 0);
