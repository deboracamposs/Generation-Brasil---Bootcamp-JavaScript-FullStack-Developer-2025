import {Queue} from './Queue';
import readline = require('readline-sync');

let opcao: number;
const fila = new Queue<string>();
 
do {
  console.log('\n******* Bem vinde ao Banco Generation Brasil 💲 *******');
  console.log('1 - Adicionar um novo cliente para atendimento');
  console.log('2 - Listar todos os clientes');
  console.log('3 - Chamar o proximo cliente');
  console.log('0 - Sair');
  console.log('******************************');

  opcao = readline.questionInt('\nEscolha uma das opcoes acima: ');

  switch (opcao) {
    case 1: 
        let nome = readline.question('\nDigite o nome do cliente: ');
        while (!isNaN(Number(nome))) {
        console.log("Nome inválido! Digite um nome e não um número.");
        nome = readline.question('\nDigite o nome do cliente: ');
        }
        fila.enqueue(nome);
        console.log(`Cliente ${nome} adicionado na fila de atendimento.`);
        break;
        
    case 2: 
        const lista = fila['QueueData'];
        if (lista.length === 0) {
            console.log('\nNão há clientes na fila.');
        } else {
            console.log('\nClientes na fila:');
            for (const cliente of lista) {
                console.log(cliente);
            }
        }
        break;

    case 3:    
        const clienteChamado = fila.dequeue();
        if (clienteChamado === undefined) {
            console.log('\nNao ha clientes na fila.');
        } else {
            console.log(`Cliente ${clienteChamado} foi chamado para atendimento.`);
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
    while(opcao !== 0)
