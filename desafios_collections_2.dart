void main() {
  /*

2 - Em um sistema administrativo, cada funcionário é representado por um ID (identificador único) em forma de inteiro.

// Este é apenas um exemplo, os valores que a lista possui podem variar. 



Crie uma função que receba a lista de IDs dos funcionários e exiba apenas os IDs que são pares.

*/

  List<int> idsFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  for (int exibirIds in idsFuncionarios) {
    if (exibirIds % 2 == 0) {
      print(exibirIds);
    }
  }

  // Obs: o % 2 significa caso o mod de 2 (o resto é 0 , então é par o numero divisivel)
}
