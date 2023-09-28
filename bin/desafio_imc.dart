import 'package:desafio_imc/models/console_utils.dart';

void main(List<String> arguments) {
  print("Bem Vindo(a) a calculadora de IMC");

  String nome = "";
  double? peso = 0;
  double? altura = 0;

  do {
    nome = ConsoleUtils.lerStringComTexto("Digite seu nome");
  } while (nome == "");

  do {
    peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso");
  } while (peso == 0);

  do {
    altura = ConsoleUtils.lerDoubleComTexto(
        "Digite sua altura separando o centímetros por ponto");
  } while (altura == 0);

  var resultado = "null";

  var calculoImc = peso! ~/ (altura! * altura);

  if (calculoImc < 16) {
    resultado = "Magreza leve";
  }
  if (calculoImc >= 16 && calculoImc < 17) {
    resultado = "Magreza moderada";
  }
  if (calculoImc >= 17 && calculoImc < 18.5) {
    resultado = "Magreza leve";
  }
  if (calculoImc >= 18.5 && calculoImc < 25) {
    resultado = "Saudável";
  }
  if (calculoImc >= 25 && calculoImc < 30) {
    resultado = "Sobrepeso";
  }
  if (calculoImc >= 30 && calculoImc < 35) {
    resultado = "Obesidade grau I";
  }
  if (calculoImc >= 35 && calculoImc < 40) {
    resultado = "Obesidade grau II (severa)";
  }
  if (calculoImc >= 40) {
    resultado = "obesidade grau III (mórbida)";
  }

  print("$nome o seu IMC é $calculoImc e a sua classificação é: $resultado");
}
