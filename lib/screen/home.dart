import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/screen/custom_widget/custom_card.dart';
import 'package:ecommerce/services/get_all_products_service.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  final String id = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New Trend",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Cairo",
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 2),
          child: FutureBuilder(
            future: AllProducts().getallProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductModel> ProductModelList = snapshot.data!;
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.3,
                    mainAxisExtent: 150,
                    crossAxisSpacing: 5,
                    crossAxisCount: 2,
                  ),
                  itemCount: ProductModelList.length,
                  itemBuilder: (context, index) {
                    return CustomCard(
                      product: ProductModelList[index],
                    );
                  },
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
