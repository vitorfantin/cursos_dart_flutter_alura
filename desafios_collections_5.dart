/*
Em um sistema de reservas, é necessário verificar se um determinado item está disponível em um conjunto de itens disponíveis.

Crie uma função que receba um set de itens disponíveis e um código e verifique se ele está presente no set.
 */

void main() {
  Set<int> codigosDisponiveis = {1, 2, 3, 4, 5};
  int codigoParaVerificar = 22;
  funcVerificarDisponibilidade(codigosDisponiveis, codigoParaVerificar);
}

void funcVerificarDisponibilidade(
  Set<int> codigosDisponiveis,
  int codigoParaVerificar,
) {
  if (codigosDisponiveis.contains(codigoParaVerificar)) {
    print("ID $codigoParaVerificar está disponível, pode usar !");
  } else {
    print("NAO está disponível !");
  }
}
