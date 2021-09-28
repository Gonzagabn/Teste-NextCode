import 'dart:io';

main() {
  int entrada = 0;

  print("\n######## Calculadora de Fatorial ########");
  print("\nDigite o número inteiro que deseja calcular seu fatorial:\n");
  entrada = int.parse(stdin.readLineSync()!);
  print("\nO fatorial do número é: " + fatorial(entrada)!.toString() + '\n');
}

//Função Fatorial
dynamic fatorial(int? numero) {
  if (numero! >= 0) {
    if (numero == 1 || numero == 0) {
      return 1;
    } else {
      return numero * fatorial(numero - 1);
    }
  } else {
    return "\n\nNão existe fatorial de números negativos!";
  }
}
