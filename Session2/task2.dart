
class Employee {
  String name;
  double salary;
  String department;

  // Static Variable
  static int employeeCount = 0;

  // Parameterized Constructor
  Employee(this.name, this.salary, [this.department = "General"]) {
    employeeCount++;
  }

  // Named Constructor
  Employee.manager(String name)
      : this(name, 15000, "Management");

  // Redirect Constructor
  Employee.developer(String name)
      : this(name, 10000, "Development");

  // Calculate Salary
  double calculateSalary() {
    return salary;
  }

  // Display Employee
  void displayEmployee() {
    print("Name : $name");
    print("Salary : $salary");
    print("Department : $department");
  }
}


class Manager extends Employee {
  Manager(String name, double salary, [String department = "Management"])
      : super(name, salary, department);

  Manager.defaultManager(String name) : super.manager(name);

  @override
  double calculateSalary() {
    return salary + 3000;
  }
}


class Developer extends Employee {
  Developer(String name, double salary,
      [String department = "Development"])
      : super(name, salary, department);

  Developer.defaultDeveloper(String name)
      : super.developer(name);

  @override
  double calculateSalary() {
    return salary + 1500;
  }
}

void main() {
  Employee emp = Employee("Menna", 8000);

  print("===== Employee =====");
  emp.displayEmployee();
  print("Total Salary: ${emp.calculateSalary()}");

  print("==========================");

  Manager manager = Manager.defaultManager("Ahmed");

  print("===== Manager =====");
  manager.displayEmployee();
  print("Total Salary: ${manager.calculateSalary()}");

  print("==========================");

  Developer developer = Developer.defaultDeveloper("Sara");

  print("===== Developer =====");
  developer.displayEmployee();
  print("Total Salary: ${developer.calculateSalary()}");

  print("==========================");

  print("Total Employees = ${Employee.employeeCount}");
}