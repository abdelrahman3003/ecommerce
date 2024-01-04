class ProductModel {
  final int id;
  final String? tilte;
  final dynamic price;
  final String description;
  final String category;
  final String image;

  ProductModel({
    required this.id,
    this.tilte,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      tilte: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      category: jsonData['category'],
      image: jsonData['image'],
    );
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
