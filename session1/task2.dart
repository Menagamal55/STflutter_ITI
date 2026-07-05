void main() {
  List<int> numbers = [10, 7, 15, 20, 8, 30];

  int sum = 0;
  int largestnumber = numbers[0];
  List<int> evenNumbers = [];
  for (int number in numbers) {
    sum += number;

    if (number > largestnumber) {
      largestnumber = number;
    }

    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }

  print("Sum = $sum");
  print("Largest Number = $largestnumber");
  print("Even Numbers = $evenNumbers");
}