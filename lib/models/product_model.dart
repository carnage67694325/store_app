import 'dart:ffi';

class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image});

  factory ProductModel.fromJson(jasonData) {
    return ProductModel(
        id: jasonData['id'],
        title: jasonData['title'],
        price: jasonData['price'],
        description: jasonData['description'],
        category: jasonData['category'],
        image: jasonData['image']);
  }
}

class RatingModel {
  final Double rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJason(jasonData) {
    return RatingModel(rate: jasonData['rate'], count: jasonData['count']);
  }
}
