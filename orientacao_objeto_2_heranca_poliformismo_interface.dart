import 'pasta_OO/class_Abstract_Conta.dart';

void main() {
  ContaCorrente ccVitor = ContaCorrente(titular: "Vitor", saldo: 1230);
  ContaPupanca cpMaria = ContaPupanca(titular: "Maria", saldo: 6786);

  print("-------------LISTA DE CONTAS SEM MOVIMENTAÇÕES--------------------");

  // Usa o for para percorrer na classe Conta com variavel conta(pode ser qualquer outro nome pois serve para armazenar temporariamente para percorrer a lista que está na classe Conta  chamando o metódo criado .todasAsContas)
  for (Conta contaLista in Conta.todasAsContas) {
    contaLista.imprimirSaldo();
  }

  print("---------------------------------");
  print("-------------TRANSFERENCIAS VITOR --------------------");

  ccVitor.enviarDinheiro(230);
  ccVitor.receberDinheiro(450);
  ccVitor.imprimirSaldo();

  print("---------------------------------");
  print("-------------TRANSFERENCIAS MARIA--------------------");
  cpMaria.enviarDinheiro(500);
  cpMaria.receberDinheiro(698);
  cpMaria.imprimirSaldo();
}
