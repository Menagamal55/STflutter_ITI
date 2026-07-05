void main() {
  List<int> grades = [95, 82, 74, 66, 48, 100];

  for (int grade in grades) {
    if (grade >= 85) {
      print("$grade : Excellent");
    } else if (grade >= 70) {
      print("$grade : Very Good");
    } else if (grade >= 50) {
      print("$grade : Pass");
    } else {
      print("$grade : Fail");
    }
  }
}