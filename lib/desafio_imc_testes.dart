double calcularImc(double peso, double altura) {
  if (peso <= 0 || altura <= 0) {
    throw ArgumentError('Peso e altura devem ser maiores que zero');
  }
  return peso / (altura * altura);
}
