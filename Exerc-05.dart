void main() {
  double p1 = 5.25;
  double p2 = 10.75;
  double p3 = 8.50;
  double p4 = 34.80;
  double p5 = 16.20;
  double soma = (p1 + p2 + p3 + p4 + p5);

  double pagamento = 100;
  double troco = pagamento - soma;

  print("O valor do troco é: $troco");
}
