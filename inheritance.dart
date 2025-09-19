// Task 3.2: Animal Sounds
class Animal {
  void makeSound() {
    print("Sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

// Task 3.3: Shape Hierarchy
class Shape {
  String color;
  Shape(this.color);
}

class Circle extends Shape {
  double radius;
  Circle(String color, this.radius) : super(color);
}

class Square extends Shape {
  double sideLength;
  Square(String color, this.sideLength) : super(color);
}

// Task 3.4: Employee and Manager
class Employee {
  String name;
  double baseSalary;

  Employee(this.name, this.baseSalary);

  double calculateSalary() {
    return baseSalary;
  }
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }
}

// Task 3.5: Library Items
class LibraryItem {
  String title;
  int id;

  LibraryItem(this.title, this.id);

  String getDetails() {
    return "Title: $title, ID: $id";
  }
}

class LibraryBook extends LibraryItem {
  String author;

  LibraryBook(String title, int id, this.author) : super(title, id);

  @override
  String getDetails() {
    return "Book - Title: $title, ID: $id, Author: $author";
  }
}

class DVD extends LibraryItem {
  String director;

  DVD(String title, int id, this.director) : super(title, id);

  @override
  String getDetails() {
    return "DVD - Title: $title, ID: $id, Director: $director";
  }
}

void main() {
  print("* * * * * Task 3.2 (Animal Sounds) * * * * *");
  Animal dog = Dog();
  Animal cat = Cat();
  dog.makeSound();
  cat.makeSound();
  print("");

  print("* * * * * Task 3.3 (Shape Hierarchy) * * * * *");
  Circle circle = Circle("Red", 5.0);
  Square square = Square("Blue", 4.0);
  print("Circle -> Color: ${circle.color}, Radius: ${circle.radius}");
  print("Square -> Color: ${square.color}, Side Length: ${square.sideLength}");
  print("");

  print("* * * * * Task 3.4 (Employee & Manager) * * * * *");
  Employee emp = Employee("Alice", 3000);
  Manager mgr = Manager("Bob", 4000, 1500);
  print("${emp.name}'s Salary: ${emp.calculateSalary()}");
  print("${mgr.name}'s Salary: ${mgr.calculateSalary()}");
  print("");

  print("* * * * * Task 3.5 (Library Items) * * * * *");
  LibraryBook book = LibraryBook("Origin", 101, "Dan Brown");
  DVD dvd = DVD("Inception", 202, "Christopher Nolan");
  print(book.getDetails());
  print(dvd.getDetails());
}
