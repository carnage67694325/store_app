import 'package:store_app/helper/api.dart';
import 'package:store_app/helper/constants.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(url: '$KBaseUrl/products/categories');
    return data;
  }
}
