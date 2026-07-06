mixin Discount {
  double discount = 10;

  double applyDiscount(double price) {
    return price - discount;
  }
}

class Food {
  String name;
  double price;

  Food(this.name, this.price);

  double calculatePrice() {
    return price;
  }

  void printOrder() {
    print("Food: $name");
    print("Price: \$${calculatePrice()}");
  }
}


class Pizza extends Food with Discount {
  String size;

  Pizza(
    String name,
    double price, {
    this.size = "Medium",
  }) : super(name, price);

  @override
  double calculatePrice() {
    return applyDiscount(price);
  }
}


class Burger extends Food with Discount {
  bool cheese;

  Burger(
    String name,
    double price, {
    this.cheese = false,
  }) : super(name, price);

  @override
  double calculatePrice() {
    return applyDiscount(price);
  }
}


class Restaurant {
  String name;

  static int totalOrders = 0;

  Restaurant(this.name);

  void displayMenu() {
    print("Restaurant: $name");

    for (var item in menuItems()) {
      print(item);
    }
  }

  Iterable<String> menuItems() sync* {
    yield "Pizza";
    yield "Burger";
    yield "Pasta";
    yield "Sandwich";
  }

  void addOrder() {
    totalOrders++;
  }
}


void main() {
  Restaurant restaurant = Restaurant("Food House");

  restaurant.displayMenu();

  print("========================");

  Pizza pizza = Pizza(
    "Pepperoni",
    200,
    size: "Large",
  );

  pizza.printOrder();
  print("Size: ${pizza.size}");
  print("After Discount: ${pizza.calculatePrice()}");

  restaurant.addOrder();

  print("========================");

  Burger burger = Burger(
    "Beef Burger",
    150,
    cheese: true,
  );

  burger.printOrder();
  print("Cheese: ${burger.cheese}");
  print("After Discount: ${burger.calculatePrice()}");

  restaurant.addOrder();

  print("========================");

  print("Total Orders: ${Restaurant.totalOrders}");
}