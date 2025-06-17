//João trabalha em uma plataforma de e-commerce e está implementando uma funcionalidade de recomendação de produtos. Ele possui uma lista de produtos que a pessoa usuária visitou e quer verificar se algum item visitado já foi adicionado ao carrinho.
// Este é apenas um exemplo, os valores que as listas possuem podem variar.
// Crie uma função que receba as listas de produtos visitados e no carrinho, exibindo os itens visitados que ainda não estão no carrinho.
void main() {
  List<String> produtosCarrinho = [
    "arroz",
    "feijão",
    "macarrão",
    "leite",
    "açúcar",
  ];
  List<String> produtosVisitados = [
    "arroz",
    "feijão",
    "macarrão",
    "leite",
    "açúcar",
    "salgadinho",
    "batata frita congelada",
    "cerveja",
  ];
  funcListarProdutoNaoCarrinho(produtosCarrinho, produtosVisitados);
}

void funcListarProdutoNaoCarrinho(
  List<String> produtosCarrinho,
  List<String> produtosVisitados,
) {
  print("Este produtos recomendados que não estão em seu carrinho.");
  for (String produto in produtosVisitados) {
    if (!produtosCarrinho.contains(produto)) {
      print(" - $produto");
    }
  }
}
