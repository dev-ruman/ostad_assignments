class Product {
  final String name;
  final int price;
  int counter;

  Product({
    required this.name,
    required this.price,
    this.counter = 0,
  });
}
