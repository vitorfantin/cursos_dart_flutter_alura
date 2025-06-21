import 'pasta_OO/class_Conta.dart';

void main() {
  Conta contaVitor = Conta(titular: "Vitor", saldo: 1000);
  Conta contaAlexandre = Conta(titular: "Alexandre", saldo: 2000);
  Conta contaMaria = Conta(titular: "Maria", saldo: 3000);
  Conta contaJose = Conta(titular: "Jose", saldo: 4000);
  print("-------------LISTA DE CONTAS--------------------");
  // Usa o for para percorrer na classe Conta com variavel conta(pode ser qualquer outro nome pois serve para armazenar temporariamente para percorrer a lista que está na classe Conta  chamando o metódo criado .todasAsContas)
  for (Conta contaLista in Conta.todasAsContas) {
    contaLista.imprimirSaldo();
  }
  print("---------------------------------");
  print("-------------TRANSFERENCIAS--------------------");

  contaVitor.enviarDinheiro(300);
  contaVitor.receberDinheiro(400);
  contaVitor.enviarDinheiro(900);
  contaVitor.receberDinheiro(6000);
}
