import 'package:store_app/helper/api.dart';
import 'package:store_app/helper/constants.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCatergoryProduct(
      {required String categoryName}) async {
    List<dynamic> data =
        await Api().get(url: '$KBaseUrl/products/category/$categoryName');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data));
    }
    return productList;
  }
}
