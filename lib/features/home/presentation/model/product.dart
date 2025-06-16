class Product {
  final String title;
  final String image;
  final double price;
  final bool isActive;

  Product({
    required this.title,
    required this.image,
    required this.price,
    this.isActive = true,
  });
}
