class Productmodel {
  final int id;
  final String name;
  final double price;
  final String image;
  final String description;
  final String category;

  Productmodel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.category,
  });

  factory Productmodel.fromJson(
    Map<String, dynamic> json,
  ) {
    return Productmodel(
      id: json["id"],
      name: json["title"],
      price: (json["price"] as num).toDouble(),
      image: json["image"],
      description: json["description"],
      category: json["category"],
    );
  }
}