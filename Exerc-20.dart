import 'dart:math';

void main() {
  final data = [];
  int limit = 100;
  var random = new Random();

  for (int i = 0; i < limit; i++) {
    String gender = "";
    String name = "Nome-$i";
    int age = random.nextInt(100);
    if (i % 2 == 0) {
      gender = "F";
    } else {
      gender = "M";
    }
    data.add(Person(name, gender, age));
  }
  for (Person p in data) {
    if (p.gender == "F") {
      print(p);
    }
  }
}

class Person {
  String name;
  String gender;
  int age;

  Person(this.name, this.gender, this.age);
  String toString() {
    return "Nome: $name\nSexo: $gender\nIdade: $age \n";
  }
}
