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

void main() {
  // Task 2: Book
  print("* * * * * Task 2: Book * * * * *");
  Book book = Book("Origin", "Dan Brown", 465);
  print("Title: ${book.title}, Author: ${book.author}, Pages: ${book.numberOfPages}\n");

  // Task 3: Student
  print("* * * * * Task 3: Student * * * * *");
  Student student = Student("Samirakhon", 20, [90.5, 85.0, 78.5, 92.0]);
  print("Student: ${student.name}, Age: ${student.age}, Average Grade: ${student.calculateAverageGrade().toStringAsFixed(2)}\n");

  // Task 4: BankAccount
  print("* * * * * Task 4: BankAccount * * * * *");
  BankAccount account = BankAccount("123456789", "Samirakhon J", 500.0);
  account.deposit(200);
  account.withdraw(100);
  account.withdraw(700); 
  account.deposit(-50);  
  print("");

  // Task 5: Rectangle
  print("* * * * * Task 5: Rectangle * * * * *");
  Rectangle rect = Rectangle(10, 5);
  print("Width: ${rect.width}, Height: ${rect.height}");
  print("Area: ${rect.area}, Perimeter: ${rect.perimeter}");
}
