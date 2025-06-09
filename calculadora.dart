import 'dart:io';

void main() {
  double n1 = 0;
  double n2 = 0;
  String operacao = "";

  print("--------------------");

  print("*--* Bem-vindo(a) ao Calculadora Fantin ! *--*");

  print("--------------------");

  print("Digite primeiro número: ");

  n1 = funcEntradaNumeros();

  print("--------------------");

  print("Digite qual operação deseja realizar  + | - | * | / ");

  operacao = funcOperacaoEntrada();

  print("--------------------");

  print("digite o segundo número: ");

  n2 = funcEntradaNumeros();

  // operacao diz que não será nulo, sem o tratamento ainda.

  funcCalcular(n1: n1, operacao: operacao, n2: n2);
}

// função criada com obrigatoridade para fixar os conteudos, apesar na aulas da aula nao apresentaram, era algo sabia de outros cursos para fixar os conhecimentos.

void funcCalcular({
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
  }
}

// PARA AS FUNCOES COM OS TRATAMENTO DE ERROS PRECISEI A RECORRER COPILOT PARA CORREÇÃO, POIS POR CONTA PROPRIA NAO ESTAVA CONSEGUINDO FAZER.

double funcEntradaNumeros() {
  double? numero;

  do {
    String? entradaUser = stdin
        .readLineSync()
        ?.trim(); // Removendo espaços extras;

    // Verifica se a entrada é nula ou vazia
    if (entradaUser == null || entradaUser.isEmpty) {
      print("Valor incorreto, digite novamente!");
      continue;
    }

    // Tenta converter a entrada para número
    try {
      numero = double.parse(entradaUser);
    } catch (e) {
      print(
        "Entrada inválida! Apenas números inteiros ou decimais são aceitos.",
      );
    }
  } while (numero == null); // Continua até que um número válido seja digitado

  return numero;
}

String funcOperacaoEntrada() {
  String? operacao;
  List<String> operacoesValidas = ["+", "-", "*", "/"];

  do {
    operacao = stdin.readLineSync()?.trim(); // Removendo espaços extras

    if (operacao == null ||
        operacao.isEmpty ||
        !operacoesValidas.contains(operacao)) {
      print("Operação inválida! Por favor, digite apenas +, -, * ou /.");
    }
  } while (operacao == null ||
      operacao.isEmpty ||
      !operacoesValidas.contains(operacao));

  return operacao;
}
