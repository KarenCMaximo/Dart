void main() {
  int lado1 = 4;
  int lado2 = 5;
  int lado3 = 2;

  if ((lado1 >= lado2 + lado3) ||
      (lado2 >= lado1 + lado3) ||
      (lado3 >= lado1 + lado2)) {
    print("Os lados não formam um triângulo!");
  } else {
    if ((lado1 == lado2) || (lado2 == lado3))
      print("Os lados formam um triângulo equilátero!");
    else if ((lado1 != lado2) && (lado2 != lado3) && (lado3 != lado1))
      print("Os lados formam um triângulo escaleno!");
    else
      print("Os lados formam um triângulo isósceles!");
  }
}
