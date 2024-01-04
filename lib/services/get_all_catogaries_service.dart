import 'package:ecommerce/services/api.dart';

class AllCatoaries {
  Future<List<dynamic>> getCatogaries() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products/categories");
    return data;
  }
}
