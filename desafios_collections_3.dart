// Uma empresa está gerenciando o inventário de seus produtos e precisa de uma solução para monitorar a quantidade de unidades de certos itens em seu estoque. Para isso, você deve criar uma função que, dado uma lista de produtos, conte quantas vezes o item "maçã" aparece na lista de produtos.

// Este é apenas um exemplo, os valores que a lista possui podem variar.

void main() {
  List<String> produtos = ["maçã", "banana", "maçã", "laranja", "maçã"];
  funcQtdMaca(produtos);
}

void funcQtdMaca(List<String> listaFrutas) {
  int contador = 0;

  for (String fruta in listaFrutas) {
    if (fruta == "maçã") {
      contador++;
    }
  }
  print("No estoque tem quantidade de Maças: $contador");
}
