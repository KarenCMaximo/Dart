void main() {
  final numeros = [];
  int maior = 0;

  for (int i = 0; i < 10; i++) {
    numeros.add(i);
  }
  for (int numeros in numeros) {
    if (numeros > maior) {
      maior = numeros;
    }
  }
  print(maior);
}
