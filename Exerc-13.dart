void main() {
  int num1 = 1;
  int num2 = 0;

  for (int i = 0; i < 30; i++) {
    num1 = num1 + num2;
    num2 = num1 - num2;
    print(num1);
  }
}
