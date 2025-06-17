void main() {
  /*
 1- A Dev Kanban está desenvolvendo um aplicativo de produtividade onde as pessoas usuárias podem verificar suas tarefas. 
Crie uma função que receba a lista de tarefas e exiba todas as tarefas.
 Este é apenas um exemplo, os valores que a lista possui podem variar. 
*/

  List<String> tarefas = [
    "Estudar",
    "Comprar mantimentos",
    "Jogar video game",
    "Passear",
    "Assistir Filmes",
  ];

  for (String listTarefas in tarefas) {
    print(listTarefas);
  }
}
