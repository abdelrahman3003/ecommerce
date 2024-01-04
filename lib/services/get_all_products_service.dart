import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/services/api.dart';

class AllProducts {
  Future<List<ProductModel>> getallProducts() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products");
    List<ProductModel> ProductsList = [];
    for (var i = 0; i < data.length; i++) {
      ProductsList.add(ProductModel.fromJson(data[i]));
    }

    return ProductsList;
  }
}
