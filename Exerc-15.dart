void main() {
  int atual = 4;
  int count = 1;
  int limite = 15;
  int total = 0;
  int proxImpar = 0;
  int antImpar = 0;

  if (limite > 100) {
    print("O limite deverá ser menor que 100!!!");
  } else {
    while (count <= limite) {
      print("$countº = $atual");
      for (int i = count; i <= limite; i++) {
        if (i % 2 != 0 && i > antImpar && i != 1) {
          proxImpar = i;
          antImpar = i;
          break;
        }
      }
      atual = atual + proxImpar;
      total += atual;
      count++;
    }
  }
  print("O valor da soma é: $total");
}
