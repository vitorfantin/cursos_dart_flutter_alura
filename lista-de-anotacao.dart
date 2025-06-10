import 'dart:io';

void main() {
  List<String> blocoDeNotas = [];

  funcMenu(blocoDeNotas);
}

// Exemplo prático nao foi seguido por completo das aulas da plataforma, pois achei mais confuso usar estrutura if/else para recursao do que a explicação do copilot usando a estrutura  DO/while,  para mim ficou menos confuso.
// O > ?.trim()  depois do readLineSync  - limpa o espaços quando o usuario digita.
String getComando() {
  print("Digite um comando: 1 - Adicionar | 2 - Listar | 3 - Sair");
  List<String> comandos = <String>["1", "2", "3", "4"];
  String? entradaUser;

  do {
    entradaUser = stdin.readLineSync()?.trim();
    if (entradaUser == null ||
        entradaUser.isEmpty ||
        !comandos.contains(entradaUser)) {
      print("Comando inválido tente novamente !");
    }
  } while (entradaUser == null ||
      entradaUser.isEmpty ||
      !comandos.contains(entradaUser));

  return entradaUser;
}

List<String> funcAddNota(List<String> anotado) {
  print("---------");

  print("Escreva um valor para guardar");

  print("---------");

  String? addAnotacao;

  do {
    addAnotacao = stdin.readLineSync()?.trim();
    if (addAnotacao == null || addAnotacao.isEmpty) {
      print("Não pode armazenar uma anotação vazia ou nula");
    }
  } while (addAnotacao == null || addAnotacao.isEmpty);

  anotado.add(addAnotacao);

  return anotado;
}

void funcListarAnotacao(List<String> anotacao) {
  if (anotacao.isEmpty) {
    print("A lista está vazia !!!!");
    return;
  }
  for (int i = 0; i < anotacao.length; i++) {
    print(anotacao[i]);
  }
}

void funcMenu(List<String> blocoDeNotas) {
  String comandoUser = getComando();
  switch (comandoUser) {
    case "1":
      print("---------");
      funcAddNota(blocoDeNotas);
      print("Anotação add com sucesso !");
      funcMenu(blocoDeNotas);

    case "2":
      print("---------");
      funcListarAnotacao(blocoDeNotas);
      print("Lista Finalizada !");
      funcMenu(blocoDeNotas);

    case "3":
      print("---------");
      print("Programa finalizado com sucesso");
      break;
  }
}
