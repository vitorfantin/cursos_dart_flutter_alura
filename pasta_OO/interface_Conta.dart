// Para criar uma interface é extamente o mesma coisa que uma classe abstrata, porém quando eu inserir os metodos eu implemento na classe filha o implements, usar interface para obrigar a fazer logica de cada metodo pre-definido.

abstract class InterfaceConta {
  // foi criado dois metodos que serão obritorios a ser desenvolvido a logica nas classes for herdada
  void enviarDinheiro(double valor) {}

  void receberDinheiro(double valor) {}
}
