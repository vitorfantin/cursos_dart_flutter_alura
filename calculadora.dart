import 'dart:io';

void main() {
 print("*--* Bem-vindo(a) ao Calculadora Fantin ! *--*");

 print("************");

print("Digite um número: ");
double n1 = double.parse(stdin.readLineSync()!);

 print("************");

print("Digite qual operação deseja realizar (+ | - | * | / : )");
String? operacao = stdin.readLineSync();

 print("************");

print("digite o segundo número: ");
double n2 = double.parse(stdin.readLineSync()!);

print ("$n1, $operacao, $n2 ");


}
