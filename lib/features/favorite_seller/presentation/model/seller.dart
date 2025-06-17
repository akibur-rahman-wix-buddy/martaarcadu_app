class Seller {
  final String name;
  final String rating;
  final String address;
  final String distance;
  final String image;
  final List<String> tags;

  Seller({
    required this.name,
    required this.rating,
    required this.address,
    required this.distance,
    required this.image,
    required this.tags,
  });

  factory Seller.fromMap(Map<String, dynamic> map) {
    return Seller(
      name: map['name'],
      rating: map['rating'],
      address: map['address'],
      distance: map['distance'],
      image: map['image'],
      tags: List<String>.from(map['tags']),
    );
  }
}
