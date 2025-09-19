import 'dart:convert';

class Weapon {
  void action() {
    print("Generic weapon action");
  }
}

class Sword extends Weapon {
  @override
  void action() {
    print("Swinging!");
  }
}

class Bow extends Weapon {
  @override
  void action() {
    print("Firing!");
  }
}

class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Lion extends Animal {
  @override
  void eat() {
    print("Eating meat.");
  }
}

class Goat extends Animal {
  @override
  void eat() {
    print("Eating grass.");
  }
}

void feed(Animal animal) {
  animal.eat();
}

abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$${amount.toStringAsFixed(2)} with Credit Card.");
  }
}

class PayPal extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$${amount.toStringAsFixed(2)} via PayPal.");
  }
}

void processPayment(PaymentMethod method, double amount) {
  method.pay(amount);
}

abstract class DataFormatter {
  String format(Map<String, dynamic> data);
}

class JSONFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    return jsonEncode(data);
  }
}

class KeyValueFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    return data.entries.map((e) => "${e.key}: ${e.value}").join("\n");
  }
}

void main() {
  print("* * * * * Task 5.2 (Weapon Actions) * * * * *");
  List<Weapon> weapons = [Sword(), Bow()];
  for (var weapon in weapons) {
    weapon.action();
  }
  print("");

  print("* * * * * Task 5.3 (Animal Feeder) * * * * *");
  feed(Lion());
  feed(Goat());
  print("");

  print("* * * * * Task 5.4 (Payment Processing) * * * * *");
  processPayment(CreditCard(), 150.0);
  processPayment(PayPal(), 75.5);
  print("");

  print("* * * * * Task 5.5 (Data Formatting) * * * * *");
  Map<String, dynamic> sampleData = {
    "name": "Samirakhon",
    "age": 20,
    "university": "New Uzbekistan University"
  };

  List<DataFormatter> formatters = [JSONFormatter(), KeyValueFormatter()];
  for (var formatter in formatters) {
    print("Formatted using ${formatter.runtimeType}:");
    print(formatter.format(sampleData));
    print("");
  }
}
