class Product {
  final String name;
  final String imageUrl;
  final String quantity;
  final int rating;
  final int reviewCount;
  final double price;
  final bool prime;
  final String deliveryType;
  final String deliveryDate;

  Product({
    required this.name,
    required this.imageUrl,
    required this.quantity,
    required this.rating,
    required this.reviewCount,
    required this.price,
    required this.prime,
    required this.deliveryType,
    required this.deliveryDate,
  });
}
