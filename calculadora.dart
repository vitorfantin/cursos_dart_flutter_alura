import 'dart:io';

void main() {
  double resultado = 0;
  print("--------------------");

  print("*--* Bem-vindo(a) ao Calculadora Fantin ! *--*");

  print("--------------------");

  print("Digite um número: ");
  double n1 = double.parse(stdin.readLineSync()!);

  print("--------------------");

  print("Digite qual operação deseja realizar  + | - | * | / ");
  String? operacao = stdin.readLineSync();

  print("--------------------");

  print("digite o segundo número: ");
  double n2 = double.parse(stdin.readLineSync()!);

  if (operacao == "+") {
    resultado = n1 + n2;
    print(" O resultado de $n1 + $n2 => $resultado ");
  } else if (operacao == "-") {
    resultado = n1 - n2;
    print(" O resultado de $n1 - $n2 => $resultado ");
  } else if (operacao == "*") {
    resultado = n1 * n2;
    print(" O resultado de $n1 * $n2 => $resultado ");
  } else {
    resultado = n1 / n2;
    print(" O resultado de $n1 / $n2 => $resultado ");
  }
}
