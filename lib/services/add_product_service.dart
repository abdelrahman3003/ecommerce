import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/services/api.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String description,
      required String category,
      required String image}) async {
    Map<String, dynamic> data =
        await Api().post(url: "https://fakestoreapi.com/products", body: {
      "tilte": title,
      "price": price,
      "description": description,
      "category": category,
      "image": image
    });
    print("==================== success");
    return ProductModel.fromJson(data);
  }
}
