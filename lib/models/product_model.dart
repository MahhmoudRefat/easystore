class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final String category; // ✅ Make sure this field exists
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
    required this.category, // ✅ Ensure it's required
  });

  factory ProductModel.fromJson(Map<String, dynamic> jsonData) {
    //print("Raw JSON Data: $jsonData"); // Debugging line
    return ProductModel(
      id: jsonData['id'] ?? 0,
      title: jsonData['title'] ?? "No title",
      price: (jsonData['price'] is int)
          ? (jsonData['price'] as int).toDouble()
          : jsonData['price'] ?? 0.0,
      description: jsonData['description'] ?? "No description",
      image: jsonData['image'] ?? "",
      category: jsonData['category'] ?? 'Unknown', // ✅ Handle missing category
      rating: jsonData['rating'] != null
          ? RatingModel.fromJson(jsonData['rating'])
          : RatingModel(rate: 0.0, count: 0), // Default values
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: (jsonData['rate'] is int)
          ? (jsonData['rate'] as int).toDouble()
          : jsonData['rate'] ?? 0.0,
      count: jsonData['count'] ?? 0,
    );

  }
}
