void main() {
//   int x = 100;
//   int y = 200;

//   print("x + y =${x + y}");
//   print("x - y = ${x - y}");
//   print("x * y = ${x * y}");
//   print("x / y = ${x / y}");
//   print("x ~/ y = ${x ~/ y}");
//   print("x % y = ${x % y}");
//   print("x++ = ${x++}");
//   print("++x = ${++x}");
//   print("x-- = ${x--}");
//   print("y += 5 = ${y += 5}");
//   print("y -= 5 = ${y -= 5}");
//   print("y *= 5 = ${y *= 5}");
//   print("y ~/= 5 = ${y ~/= 5}");
//------------------------------------------------------------

//   String? phonenumber;
//   phonenumber ??= "1234567890";
//   print(phonenumber);
//------------------------------------------------------------

//   List<Map<String? , dynamic? >> students = [
//     {
//       "name": "Menna",
//       "age": null,
//       "phone": "01012345678",
//     },
//     {
//       "name": null,
//       "age": 22,
//       "phone": "01198765432",
//     }
//   ];
//   print(students[0]);
//______________________________________________________________________

//   List<String> fruits = ["apple", "banana", "orange", "grape", "kiwi"];

//   fruits.forEach((fruit) {
//     print(fruit);
//   });
// print("---------------------------------------------------");

//   for (var fruit in fruits) {
//     print(fruit);
//   }

//  print("---------------------------------------------------");

//   for(int i=0; i<fruits.length; i++){
//     print(fruits[i]);
//   }
//-----------------------------------------------------

  List<Map<String, dynamic>> students = [
    {"name": "Menna", "degree": 100},
    {
      "name": "Ahmed",
      "degree": 85,
    },
    {
      "name": "Sara",
      "degree": 90,
    },
    {
      "name": "Ali",
      "degree": 25,
    },
    {
      "name": "Laila",
      "degree": 35,
    }
  ];

  for (var student in students) {
    if (student["degree"] >= 50) {
      print("${student["name"]} is passed ");
    } else {
      print("${student["name"]} is failed ");
    }
  }
}
