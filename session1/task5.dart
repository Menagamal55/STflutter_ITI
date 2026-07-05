void main() {
  List<Map<String, dynamic?>> students = [
    {
      "name": "Menna",
      "age": 20,
      "phone": "01012345678",
      "degree": 90,
    },
    {
      "name": "Manar",
      "age": 22,
      "phone": "01198765432",
      "degree": 95,
    },
    {
      "name": "Ahmed",
      "age": 21,
      "phone": null,
      "degree": 25,
    }
  ];

  Map<String, dynamic?> topStudent = students[0];

  for (var student in students) {
    if (student["degree"] >= 50) {
      print("${student["name"]} : Pass");
    }

    if (student["phone"] == null) {
      print("${student["name"]} : No Phone");
    }

    if (student["degree"] > topStudent["degree"]) {
      topStudent = student;
    }
  }

  print("Top Student:");
  print("Name: ${topStudent["name"]}");
  print("Degree: ${topStudent["degree"]}");
}