import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/services/api.dart';

class CatogaryProducts {
  Future<List<ProductModel>> getallCatogaryProducts(
      String category_name) async {
    List<dynamic> data = await Api()
        .get(url: "https://fakestoreapi.com/products/category/$category_name");
    List<ProductModel> ProductsList = [];
    for (var i = 0; i < data.length; i++) {
      ProductsList.add(ProductModel.fromJson(data[i]));
    }
    return ProductsList;
  }
}
