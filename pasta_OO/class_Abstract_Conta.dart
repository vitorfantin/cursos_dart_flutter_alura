import '../pasta_OO/interface_Conta.dart';

abstract class Conta {
  String titular;
  double _saldo;

  static List<Conta> todasAsContas = [];

  // para o parametros do construtor seja obrigatorio  entre {} usar o required, porém caso for usar parametro/variavel privado , precisamos inicializar como foi feito com o saldo abaixo,  entrao dessa maneira me deixa definir o primeiro valor normalmente, depois o que valerá somente o _saldo neste exemplo.
  Conta({required this.titular, required double saldo}) : _saldo = saldo {
    todasAsContas.add(this);
  }
  // metodo simples para mostrar o titular e o saldo da conta
  void imprimirSaldo() {
    print("O Titular $titular , tem saldo de R\$$_saldo");
  }
}

// foi herdado do pai com interface em outro arquivo para efeito de teste de poliformismo com interface, onde logica foi criada para cada classe filha, pois na interface é generica.
class ContaCorrente extends Conta implements InterfaceConta {
  double emprestimo = 500;
  ContaCorrente({required String titular, required double saldo})
    : super(titular: titular, saldo: saldo);

  @override
  void enviarDinheiro(double valor) {
    if (valor <= _saldo + emprestimo) {
      _saldo = (_saldo + emprestimo) - valor;
      print("Valor transferido R\$$valor , com sucesso");
    } else {
      print("Transação NÃO Concluida, verifique seu saldo");
    }
  }

  @override
  void receberDinheiro(double valor) {
    _saldo += valor;
    print("Valor recebido na Conta Corrente R\$$valor");
  }
}

class ContaPupanca extends Conta implements InterfaceConta {
  double rendimento = 0.05;
  ContaPupanca({required String titular, required double saldo})
    : super(titular: titular, saldo: saldo);

  @override
  void enviarDinheiro(double valor) {
    if (valor <= _saldo) {
      print("Valor enviado com sucesso! R\$$valor");
    } else {
      print("ERRO AO ENVIAR");
    }
  }

  @override
  void receberDinheiro(double valor) {
    _saldo += valor;
    print("Dinheiro recebido com sucesso na poupança R\$$valor");
  }

  void rendimentoPoupanca(double rentabilidade) {
    rentabilidade = _saldo * rendimento;
    _saldo += rentabilidade;
    print("Rendimento da poupança foi de R\$$rentabilidade");
  }
}
