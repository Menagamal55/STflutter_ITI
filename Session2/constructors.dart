// ==========================================
// 1. Default Constructor
// ==========================================

class User {
  User() {
    print("User Created");
  }
}

// ==========================================
// 2. Parameterized Constructor
// ==========================================

class Student {
  String name;

  Student(this.name);
}

// ==========================================
// 3. Named Constructor
// ==========================================

class Person {
  Person.admin() {
    print("Admin Created");
  }

  Person.customer() {
    print("Customer Created");
  }
}

// ==========================================
// 4. Constant Constructor
// ==========================================

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

// ==========================================
// 5. Factory Constructor
// ==========================================

class Test {
  Test._internal();

  static final Test obj = Test._internal();

  factory Test() {
    return obj;
  }
}

// ==========================================
// 6. Redirecting Constructor
// ==========================================

class Employee {
  Employee.guest() : this("Guest");

  Employee(String name) {
    print(name);
  }
}

// ==========================================
// 7. Private Constructor
// ==========================================

class Company {
  Company._();
}

// ==========================================
// 8. Initializer List Constructor
// ==========================================

class Teacher {
  final int age;

  Teacher(int x) : age = x;
}

// ==========================================
// 9. Super Constructor
// ==========================================

class Animal {
  Animal(String name) {
    print(name);
  }
}

class Dog extends Animal {
  Dog() : super("Dog");
}

// ==========================================
// 10. Constructor with Optional Positional Parameters
// ==========================================

class User1 {
  String? name;

  User1([this.name]);
}

// ==========================================
// 11. Constructor with Named Parameters
// ==========================================

class User2 {
  String? name;
  int? age;

  User2({
    this.name,
    this.age,
  });
}

// ==========================================
// 12. Constructor with Required Named Parameters
// ==========================================

class User3 {
  String name;

  User3({
    required this.name,
  });
}

// ==========================================
// 13. Constructor with Default Values
// ==========================================

class User4 {
  String name;

  User4({
    this.name = "Guest",
  });
}

// ==========================================
// 14. Generative Constructor
// ==========================================

class Car {
  Car() {
    print("New Object Created");
  }
}

// ==========================================
// 15. Copy Constructor Concept
// ==========================================

class User5 {
  String name;

  User5(this.name);

  User5.copy(User5 other) : name = other.name;
}