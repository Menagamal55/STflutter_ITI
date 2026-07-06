mixin Fly {
  double flySpeed = 200;

  void fly() {
    print("Flying...");
  }

  void printFlySpeed() {
    print("Fly Speed = $flySpeed");
  }
}

mixin Swim {
  double swimSpeed = 100;

  void swim() {
    print("Swimming...");
  }

  void printSwimSpeed() {
    print("Swim Speed = $swimSpeed");
  }
}

class Animal {
  String name;

  Animal(this.name);

  void display() {
    print("Animal Name: $name");
  }
}

class Duck extends Animal with Fly, Swim {
  Duck() : super("Duck");
}

class Fish extends Animal with Swim {
  Fish() : super("Fish");
}

class Bird extends Animal with Fly {
  Bird() : super("Bird");
}

void main() {
  Duck duck = Duck();

  duck.display();
  duck.fly();
  duck.swim();
  duck.printFlySpeed();
  duck.printSwimSpeed();

  print("------------");

  Fish fish = Fish();

  fish.display();
  fish.swim();
  fish.printSwimSpeed();

  print("------------");

  Bird bird = Bird();

  bird.display();
  bird.fly();
  bird.printFlySpeed();
}