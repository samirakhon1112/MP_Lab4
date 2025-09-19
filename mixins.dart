// Task 4.2: Flyer Mixin
mixin Flyer {
  void fly() {
    print("Taking off!");
  }
}

class Bird with Flyer {}

class Plane with Flyer {}

// Task 4.3: Logger Mixin
mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

class DataService with Logger {
  void fetchData() {
    log("Fetching data");
  }
}

// Task 4.4: Validator Mixin
mixin Validator {
  bool isEmailValid(String email) {
    return email.contains("@") && email.contains(".");
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignup with Validator {
  void validate(String email, String password) {
    print("Email '$email' valid: ${isEmailValid(email)}");
    print("Password strong: ${isPasswordStrong(password)}");
  }
}

// Task 4.5: Combining Mixins
mixin Performer {
  void perform() {
    print("Performing on stage!");
  }
}

mixin Musician {
  void playInstrument() {
    print("Playing an instrument!");
  }
}

class Artist {
  String name;
  Artist(this.name);
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

void main() {
  print("* * * * * Task 4.2 (Flyer Mixin) * * * * *");
  Bird bird = Bird();
  Plane plane = Plane();
  bird.fly();
  plane.fly();
  print("");

  print("* * * * * Task 4.3 (Logger Mixin) * * * * *");
  DataService service = DataService();
  service.fetchData();
  print("");

  print("* * * * * Task 4.4 (Validator Mixin) * * * * *");
  UserSignup signup = UserSignup();
  signup.validate("test@example.com", "strongPass123");
  signup.validate("invalidemail", "12345");
  print("");

  print("* * * * * Task 4.5 (Combining Mixins) * * * * *");
  Dancer dancer = Dancer("Alice");
  Guitarist guitarist = Guitarist("Bob");
  print("${dancer.name}:");
  dancer.perform();
  print("${guitarist.name}:");
  guitarist.perform();
  guitarist.playInstrument();
}
