void main() {
  final numeros = [];
  int multiplo = 3;

  for (int i = 0; i < 15; i++) {
    numeros.add(i);
  }
  numeros.asMap().forEach((index, element) {
    numeros[index] = element * multiplo;
  });
  for (int numeros in numeros) {
    print(numeros);
  }
}
