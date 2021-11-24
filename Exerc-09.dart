void main() {
  double altura = 1.60;
  double peso = 49;
  String sexo = "f";
  double pesoIdeal = peso / (altura * altura);

  if (sexo == "f") {
    if (pesoIdeal < 19) {
      print("Abaixo do peso");
    } else if (pesoIdeal >= 19 && pesoIdeal < 24) {
      print("Peso ideal");
    } else {
      print("Acima do peso");
    }
  } else {
    if (pesoIdeal < 20) {
      print("Abaixo do peso");
    } else if (pesoIdeal >= 20 && pesoIdeal < 25) {
      print("Peso ideal");
    } else {
      print("Acima do peso");
    }
  }
}
