void main() {
  int v = 36;
  int A = 2;
  int B = 8;

  if (A > B) {
    print("O valor B deverá ser maior que o valor A!!!");
  } else {
    for (int i = A; i <= B; i++) {
      int resultado = v * i;
      print("$i * $v = $resultado");
    }
  }
}
