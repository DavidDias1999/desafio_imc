class Pessoa {
  String _nome = "";
  String _peso = "";
  String _altura = "";

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(String peso) {
    _peso = peso;
  }

  String getPeso() {
    return _peso;
  }

  void setAltura(String altura) {
    _altura = altura;
  }

  String getAltura() {
    return _altura;
  }

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso as String;
    _altura = altura as String;
  }

  @override
  String toString() {
    return {"Nome": _nome, "Peso": _peso, "Altura": _altura}.toString();
  }
}
