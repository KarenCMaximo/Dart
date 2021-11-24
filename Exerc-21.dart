void main() {
  ContaCorrente conta1 = new ContaCorrente(1, 765, 0, 300);
  Cliente cliente1 = new Cliente(conta1, "Karen");

  ContaPoupanca conta2 = new ContaPoupanca(2, 345, 0, 5);
  Cliente cliente2 = new Cliente(conta2, "Fábio Lucca");

  conta1.Deposito(900);
  conta1.Saque(100);
  conta1.Saque(250);
  conta1.Transferencia(150, conta2);
  print(cliente1);
  print(cliente2);
}

class Conta {
  int id;
  int number;
  double amount;
  String history = "\nHistórico \n";
  Conta(this.id, this.number, this.amount);
  Deposito(double amount) {
    if (amount > 0) {
      this.amount += amount;
      this.SaveToHistory("** Depósito $amount **");
    }
  }

  Saque(double amount) {
    if (amount <= this.amount) {
      this.amount -= amount;
      this.SaveToHistory("** Saque $amount **");
      return true;
    } else {
      return false;
    }
  }

  Transferencia(double amount, Conta destino) {
    if (this.Saque(amount)) {
      destino.Deposito(amount);
      this.SaveToHistory("** Transferência $amount **");
    }
  }

  SaveToHistory(String event) {
    this.history += "\t\t$event\n";
  }

  @override
  String toString() {
    return "\tId: $id\n\tNumber: $number\n\tAmount: $amount\n\t\t$history";
  }
}

class ContaCorrente extends Conta {
  double chequeEspecial;
  ContaCorrente(id, number, amount, this.chequeEspecial)
      : super(id, number, amount);
  @override
  String toString() {
    return "\tId: $id\n\tNumber: $number\n\tAmount: $amount\n\tCheque Especial: $chequeEspecial\n$history";
  }

  @override
  Saque(double amount) {
    double amountWithCheque = this.amount + this.chequeEspecial;
    if (amount <= this.amount) {
      this.amount -= amount;
      this.SaveToHistory("** Saque $amount **");
      return true;
    } else if (amount <= amountWithCheque) {
      double usedOfCheque = amount - this.amount;
      this.amount -= amount;
      this.chequeEspecial = this.chequeEspecial - usedOfCheque;
      this.SaveToHistory("** Saque [Limite Especial] $amount **");
      return true;
    } else {
      return false;
    }
  }
}

class ContaPoupanca extends Conta {
  int taxaRendimento;
  ContaPoupanca(id, number, amount, this.taxaRendimento)
      : super(id, number, amount);
  @override
  String toString() {
    return "\tId: $id\n\tNumber: $number\n\tAmount: $amount\n\tTaxa Rendimento: $taxaRendimento\n$history";
  }
}

class Cliente {
  String nome;
  Conta conta;
  Cliente(this.conta, this.nome);
  String toString() {
    return "Nome: $nome\n$conta\n";
  }
}
