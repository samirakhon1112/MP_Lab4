class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);
}

class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double calculateAverageGrade() {
    if (grades.isEmpty) return 0.0;
    double sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }
}

class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be positive.");
    } else if (amount > balance) {
      print("Error: Insufficient funds. Current balance: \$${balance.toStringAsFixed(2)}");
    } else {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");
    }
  }
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double get area => width * height;
  double get perimeter => 2 * (width + height);
}

// Task 2.2: OrderStatus
enum OrderStatus { pending, processing, shipped, delivered, cancelled }

// Task 2.3, 2.5: TrafficLight with properties
enum TrafficLight {
  red(30),
  yellow(5),
  green(45);

  final int durationInSeconds;
  const TrafficLight(this.durationInSeconds);
}

String trafficLightAction(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      return "Stop";
    case TrafficLight.yellow:
      return "Caution";
    case TrafficLight.green:
      return "Go";
  }
}

// Task 2.4: UserRole
enum UserRole { admin, editor, guest }

class User {
  String name;
  UserRole role;

  User(this.name, this.role);

  bool hasEditPermission() {
    return role == UserRole.admin || role == UserRole.editor;
  }
}

void main() {
  print("* * * * * Task 2.2 (OrderStatus) * * * * *");
  OrderStatus order = OrderStatus.processing;
  print("Order Status: $order\n");

  print("* * * * * Task 2.3 (TrafficLight) * * * * *");
  for (var light in TrafficLight.values) {
    print("${light.name.toUpperCase()} -> Action: ${trafficLightAction(light)}");
  }
  print("");

  print("* * * * * Task 2.4 (UserRole & Permissions) * * * * *");
  User user1 = User("Alice", UserRole.admin);
  User user2 = User("Bob", UserRole.editor);
  User user3 = User("Charlie", UserRole.guest);

  for (var user in [user1, user2, user3]) {
    print("${user.name} (${user.role}) has edit permission: ${user.hasEditPermission()}");
  }
  print("");

  print("* * * * * Task 2.5 (TrafficLight with Durations) * * * * *");
  for (var light in TrafficLight.values) {
    print("${light.name.toUpperCase()} -> Duration: ${light.durationInSeconds} seconds");
  }
}
