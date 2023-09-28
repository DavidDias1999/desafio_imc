// import 'package:desafio_imc/desafio_imc.dart';
import 'package:test/test.dart';
import 'package:desafio_imc/desafio_imc_testes.dart' as app;

void main() {
  test('calculate', () {
    expect(42, 42);
  });

  group('Verifica se os valores são calculados', () {
    var valuesToTest = {
      {'peso': 70, 'altura': 1.80}: 21,
      {'peso': 120, 'altura': 1.60}: 46,
    };
    valuesToTest.forEach((values, expected) {
      test('Entrada: $values Esperado:$expected', () {
        expect(
            app.calcularImc(double.parse(values["peso"].toString()),
                double.parse(values["altura"].toString())),
            greaterThanOrEqualTo(expected));
      });
    });
  });

  group(
      'Verifica se os valores são calculados informando valores zerados, deve gerar erro',
      () {
    var valuesToTest = [
      {'peso': 0, 'altura': 1.80},
      {'peso': 120, 'altura': 0},
    ];

    for (var values in valuesToTest) {
      test('Entrada: $values', () {
        expect(
          () => app.calcularImc(
            double.parse(values["peso"].toString()),
            double.parse(values["altura"].toString()),
          ),
          throwsA(TypeMatcher<ArgumentError>()),
        );
      });
    }
  });
}
