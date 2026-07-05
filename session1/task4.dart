void main() {
  Map<String, dynamic> student = {
    "name": "Menna",
    "age": 22,
    "phone": "01012345678",
    "grade": 95,
  };

  student.forEach((key, value) {
    print("$key : $value");
  });
}