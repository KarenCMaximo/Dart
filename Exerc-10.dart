void main() {
  double a = 125;
  double v0 = 0;
  double t = 0.30;
  double v = (v0 + a * t);

  if (v <= 40) {
    print("Veículo muito lento");
  } else if (v <= 60) {
    print("Velocidade permitida");
  } else if (v <= 80) {
    print("Velocidade de cruzeiro");
  } else if (v <= 120) {
    print("Veículo rápido");
  } else {
    print("Veículo muito rápido");
  }
}
