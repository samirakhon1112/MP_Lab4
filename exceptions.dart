void printElementAt(List list, int index) {
  try {
    print("Element at index $index: ${list[index]}");
  } on RangeError {
    print("Error: Invalid index.");
  }
}

void parseAge(String input) {
  try {
    int age = int.parse(input);
    print("Parsed age: $age");
  } on FormatException {
    print("Error: '$input' is not a valid number.");
  }
}

class InvalidInputException implements Exception {
  final String message;
  InvalidInputException(this.message);

  @override
  String toString() => "InvalidInputException: $message";
}

void processText(String text) {
  if (text.isEmpty) {
    throw InvalidInputException("Input cannot be empty.");
  } else {
    print("Processing text: $text");
  }
}

void simulateDatabaseRead({bool throwError = false}) {
  try {
    if (throwError) {
      throw Exception("Database read failed!");
    }
    print("Data read successfully from database.");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Database connection closed.");
  }
}

void main() {
  print("* * * * * Task 7.2 (Index Out of Bounds) * * * * *");
  List numbers = [10, 20, 30];
  printElementAt(numbers, 1); 
  printElementAt(numbers, 5); 
  print("");

  print("* * * * * Task 7.3 (FormatException) * * * * *");
  parseAge("25");   
  parseAge("abc");  
  print("");

  print("* * * * * Task 7.4 (Custom Exception) * * * * *");
  try {
    processText(""); 
  } catch (e) {
    print(e);
  }
  try {
    processText("Hello, world!"); 
  } catch (e) {
    print(e);
  }
  print("");

  print("* * * * * Task 7.5 (Finally Block) * * * * *");
  simulateDatabaseRead();          
  simulateDatabaseRead(throwError: true); 
}
