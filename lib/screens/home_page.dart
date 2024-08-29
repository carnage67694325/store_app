import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/all_products_service.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'New Trend',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.cartShopping))
          ],
        ),
        body: FutureBuilder<List<ProductModel>>(
            future: AllProductsService().getAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductModel> prodcuts = snapshot.data!;
                return Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: GridView.builder(
                      itemCount: prodcuts.length,
                      clipBehavior: Clip.none,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 81,
                        childAspectRatio: 1.3,
                      ),
                      itemBuilder: (context, index) {
                        return CustomCard(product: prodcuts[index]);
                      }),
                );
              } else {
                return Center(
                  child: LoadingAnimationWidget.beat(
                      color: Colors.blueAccent, size: 50),
                );
              }
            }));
  }
}
