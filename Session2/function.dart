// ==========================================
// 1. No Parameter + No Return
// ==========================================

void sayHello() {
  print("Hello Dart");
}

// ==========================================
// 2. Parameter + No Return
// ==========================================

void greet(String name) {
  print("Hello $name");
}

// ==========================================
// 3. No Parameter + Return
// ==========================================

String getName() {
  return "Menna";
}

// ==========================================
// 4. Parameter + Return
// ==========================================

int add(int a, int b) {
  return a + b;
}

// ==========================================
// 5. Named Function
// ==========================================

void welcome() {
  print("Welcome");
}

// ==========================================
// 6. Anonymous Function
// ==========================================

void anonymousExample() {
  List<String> names = ["Ali", "Sara", "Menna"];

  names.forEach((name) {
    print(name);
  });
}

// ==========================================
// 7. Arrow Function
// ==========================================

int square(int number) => number * number;

// ==========================================
// 8. Lambda Function
// ==========================================

void lambdaExample() {
  var multiply = (int a, int b) => a * b;

  print(multiply(4, 5));
}

// ==========================================
// 9. Higher Order Function
// ==========================================

void calculate(int a, int b, Function operation) {
  print(operation(a, b));
}

int sum(int x, int y) {
  return x + y;
}

// ==========================================
// 10. Recursive Function
// ==========================================

int factorial(int n) {
  if (n == 1) {
    return 1;
  }

  return n * factorial(n - 1);
}

// ==========================================
// 11. Callback Function
// ==========================================

void execute(Function callback) {
  callback();
}

void printHello() {
  print("Hello Callback");
}

// ==========================================
// 12. Async Function
// ==========================================

Future<void> getData() async {
  await Future.delayed(Duration(seconds: 2));

  print("Data Loaded");
}

// ==========================================
// 13. Sync Function
// ==========================================

void displayNumbers() {
  print(1);
  print(2);
  print(3);
}

// ==========================================
// 14. Generator Function
// ==========================================

Iterable<int> numbers() sync* {
  yield 1;
  yield 2;
  yield 3;
}

// ==========================================
// 15. Local Function
// ==========================================

void localExample() {
  void sayHi() {
    print("Hi");
  }

  sayHi();
}

// ==========================================
// 16. Function as Variable
// ==========================================

void functionVariable() {
  var greeting = () {
    print("Hello Variable");
  };

  greeting();
}

// ==========================================
// 17. Typedef Function
// ==========================================

typedef Operation = int Function(int a, int b);

void executeOperation(Operation op) {
  print(op(2, 3));
}

// ==========================================
// 18. Constructor Function
// ==========================================

class User {
  String name;

  User(this.name);
}

// ==========================================
// 19. Getter Function
// ==========================================

class Student {
  String _name = "Menna";

  String get name => _name;
}

// ==========================================
// 20. Setter Function
// ==========================================

class Employee {
  String _name = "";

  set name(String value) {
    _name = value;
  }

  String get name => _name;
}

// ==========================================
// 21. Static Function
// ==========================================

class MathHelper {
  static int cube(int x) {
    return x * x * x;
  }
}

// ==========================================
// 22. Generic Function
// ==========================================

T getValue<T>(T value) {
  return value;
}

// ==========================================
// 23. Optional Positional Parameter
// ==========================================

void student(String name, [int? age]) {
  print("$name - $age");
}

// ==========================================
// 24. Optional Named Parameter
// ==========================================

void studentInfo({
  String? name,
  int? age,
}) {
  print("$name - $age");
}

// ==========================================
// 25. Required Named Parameter
// ==========================================

void register({
  required String name,
  required int age,
}) {
  print("$name - $age");
}

// ==========================================
// 26. Default Parameter
// ==========================================

void welcomeGuest({
  String name = "Guest",
}) {
  print("Welcome $name");
}

// ==========================================
// Main
// ==========================================

void main() async {
  // 1
  sayHello();

  // 2
  greet("Menna");

  // 3
  print(getName());

  // 4
  print(add(10, 20));

  // 5
  welcome();

  // 6
  anonymousExample();

  // 7
  print(square(5));

  // 8
  lambdaExample();

  // 9
  calculate(5, 3, sum);

  // 10
  print(factorial(5));

  // 11
  execute(printHello);

  // 12
  await getData();

  // 13
  displayNumbers();

  // 14
  print(numbers());

  // 15
  localExample();

  // 16
  functionVariable();

  // 17
  executeOperation(sum);

  // 18
  User user = User("Menna");
  print(user.name);

  // 19
  Student student1 = Student();
  print(student1.name);

  // 20
  Employee employee = Employee();
  employee.name = "Ahmed";
  print(employee.name);

  // 21
  print(MathHelper.cube(3));

  // 22
  print(getValue<int>(100));
  print(getValue<String>("Flutter"));

  // 23
  student("Menna");
  student("Menna", 20);

  // 24
  studentInfo(name: "Menna");
  studentInfo(name: "Menna", age: 20);

  // 25
  register(name: "Menna", age: 20);

  // 26
  welcomeGuest();
  welcomeGuest(name: "Menna");
}