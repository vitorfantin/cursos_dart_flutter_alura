class Conta {
  String titular;
  double _saldo;

  static List<Conta> todasAsContas = [];

  // para o parametros do construtor seja obrigatorio  entre {} usar o required, porém caso for usar parametro/variavel privado , precisamos inicializar como foi feito com o saldo abaixo,  entrao dessa maneira me deixa definir o primeiro valor normalmente, depois o que valerá somente o _saldo neste exemplo.
  Conta({required this.titular, required double saldo}) : _saldo = saldo {
    todasAsContas.add(this);
  }

  // método é quando cria funções dentro de classes
  void enviarDinheiro(double valor) {
    if (valor <= _saldo) {
      _saldo -= valor;
      print("$titular enviou a quantia de R\$$valor , enviado com sucesso !");
      imprimirSaldo();
    } else {
      print("Transferencia não sucedida, verifique seu saldo!");
    }
  }

  void receberDinheiro(double valor) {
    _saldo += valor;
    print("$titular recebeu a quantia de R\$$valor");
    imprimirSaldo();
  }

  void imprimirSaldo() {
    print("O Titular $titular , tem saldo de R\$$_saldo");
  }
}
