class CoffeeModel {
  final int? categoryId;
  final String name;
  final String description;
  final String subtitle;
  final num price;
  final CoffeeType type;
  final int count;
  final String imageUrl;

  CoffeeModel({
    this.categoryId,
    required this.name,
    required this.description,
    required this.subtitle,
    required this.price,
    required this.type,
    required this.count,
    required this.imageUrl,
  });

  factory CoffeeModel.fromJson(Map<String, dynamic> json) {
    return CoffeeModel(
      categoryId: json["category_id"] as int? ?? 0,
      name: json["name"] as String? ?? "",
      description: json["description"] as String? ?? "",
      subtitle: json["subtitle"] as String? ?? "",
      price: json["price"] as num? ?? 0.0,
      type: json["type"] as CoffeeType? ?? CoffeeType.l,
      count: json["count"] as int? ?? 0,
      imageUrl: json["image_url"] as String? ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "description": description,
      "subtitle": subtitle,
      "price": price,
      "type": type,
      "count": count,
      "image_url": imageUrl,
    };
  }
}

enum CoffeeType {
  s,
  m,
  l,
}


