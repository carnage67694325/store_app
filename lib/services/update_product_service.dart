import 'package:store_app/helper/api.dart';
import 'package:store_app/helper/constants.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> UpdateProduct(
      {required String title,
      required int id,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().put(
      url: '$KBaseUrl/products/$id',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        "category": category
      },
    );
    return ProductModel.fromJson(data);
  }
}
