void main() {
  var studentName = "Menna";

  final age = 20;

  const double gpa = 3.8;

  final currentTime = DateTime.now();

  dynamic? phoneNumber;

  if (phoneNumber == null) {
    print("No Phone");
  }

  print(studentName);
  print(age);
  print(gpa);
  print(currentTime);
  print(phoneNumber);
}