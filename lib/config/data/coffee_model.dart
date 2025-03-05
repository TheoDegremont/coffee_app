import 'dart:ffi';

final List<String> coffeeType = [
  'Capuccino',
  'Latte',
  'Espresso',
  'Mocha',
  'Macchiato',
  'Americano'
];

class CoffeeModel {
  final String name;
  final String imagePath;
  final double price;
  final String description;
  final double note;

  CoffeeModel({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.description,
    required this.note,
  });
}

final List<CoffeeModel> coffeeList = [
  CoffeeModel(
      name: 'Capuccino',
      imagePath: 'assets/images/coffee_image.png',
      price: 4.99,
      note: 4.5,
      description:
          'Capuccino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk.'),
  CoffeeModel(
      name: 'Latte',
      imagePath: 'assets/images/coffee_image.png',
      price: 3.99,
      note: 3.5,
      description:
          'Caffe latte is a coffee drink made with espresso and steamed milk. The word comes from the Italian caffè e latte, caffelatte or caffellatte, which means "coffee & milk".'),
  CoffeeModel(
      name: 'Espresso',
      imagePath: 'assets/images/coffee_image.png',
      price: 2.99,
      note: 4.0,
      description:
          'Espresso is a coffee-making method of Italian origin, in which a small amount of nearly boiling water is forced under pressure through finely-ground coffee beans.'),
  CoffeeModel(
      name: 'Mocha',
      imagePath: 'assets/images/coffee_image.png',
      price: 5.99,
      note: 3.0,
      description:
          'A caffè mocha, also called mocaccino, is a chocolate-flavored variant of a caffè latte. Other commonly used spellings are mochacc ino and also mochachino.'),
  CoffeeModel(
      name: 'Macchiato',
      imagePath: 'assets/images/coffee_image.png',
      price: 4.99,
      note: 4.5,
      description:
          'Caffè macchiato, sometimes called espresso macchiato, is an espresso coffee drink with a small amount of milk, usually foamed.'),
  CoffeeModel(
      name: 'Americano',
      imagePath: 'assets/images/coffee_image.png',
      price: 3.99,
      note: 5.0,
      description:
          'Caffè Americano or Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor'),
];
