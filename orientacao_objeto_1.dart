void main() {
  Conta contaVitor = Conta(titular: "Vitor", saldo: 1000);
  Conta contaAlexandre = Conta(titular: "Alexandre", saldo: 2000);
  Conta contaMaria = Conta(titular: "Maria", saldo: 3000);
  Conta contaJose = Conta(titular: "Jose", saldo: 4000);

// Usa o for para percorrer na classe Conta com variavel conta(pode ser qualquer outro nome pois serve para armazenar temporariamente para percorrer a lista que está na classe Conta  chamando o metódo criado .todasAsContas)
  for(Conta conta in Conta.todasAsContas){
    print("Titular: ${conta.titular}, Saldo R\$ ${conta.saldo}");

  }
}

class Conta {
  String titular;
  double saldo;
// está inciando uma lista do tipo Conta(que é da classe criada) que se chama todasAsContas
static List<Conta> todasAsContas = [];




  Conta({required this.titular, required this.saldo}){
    // depois do contrutor abrindo {} vamos add na lista criada todas as instancias com o .add(this);  será adicionado a lista automaticamente. 
    todasAsContas.add(this);
  }
}
