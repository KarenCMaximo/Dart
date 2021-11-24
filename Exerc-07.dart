void main() {
  double peso = 70;
  double altura = 1.74;
  double resultado = peso / (altura * altura);

  if ((resultado) < 18.6) {
    print("Abaixo do peso");
  } else if ((resultado) < 25.0) {
    print("Peso ideal");
  } else if ((resultado) < 30.0) {
    print("Levemente acima do peso");
  } else if ((resultado) < 35.0) {
    print("Obesidade Grau I");
  } else if ((resultado) < 40.0) {
    print("Obesidade Grau II");
  } else {
    print("Obesidade Grau III");
  }
}
