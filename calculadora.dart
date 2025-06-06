import 'dart:io';

void main() {
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

  // operacao diz que não será nulo, sem o tratamento ainda.

  funcCalcular(n1: n1, operacao: operacao!, n2: n2);
}

// função criada com obrigatoridade para fixar os conteudos, apesar na aulas da aula nao apresentaram, era algo sabia de outros cursos para fixar os conhecimentos.

funcCalcular({
  required double n1,
  required String operacao,
  required double n2,
}) {
  switch (operacao) {
    case "+":
      print("o Reultado de $n1 + $n2 : ${n1 + n2}");
      break;
    case "-":
      print("O resultado de $n1 - $n2 : ${n1 - n2}");
      break;
    case "*":
      print("O resultado de $n1 * $n2 : ${n1 * n2}");
      break;
    case "/":
      print("O resultado de $n1 / $n2 : ${n1 / n2}");
      break;
    default:
      print(
        "Operador digitado é inválido, tente novamente somente com  + - * / ",
      );
  }
}
