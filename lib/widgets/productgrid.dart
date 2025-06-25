import 'package:fashionapplication/models/product_model.dart';
import 'package:fashionapplication/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});
  static List<ProductModel> products = [
    ProductModel(
      title: 'Top man black',
      image: 'assets/images/models/model1.png',
      price: 29.99,
    ),
    ProductModel(
      title: 'Deep gray essential regul shirt',
      image: 'assets/images/models/model2.png',
      price: 49.99,
    ),
    ProductModel(
      title: 'Gray coat and white T-shirt',
      image: 'assets/images/models/model3.png',
      price: 19.99,
    ),
    ProductModel(
      title: 'Top man black with Trousers',
      image: 'assets/images/models/model4.png',
      price: 39.99,
    ),
    ProductModel(
      title: 'Top man black with Trous..',
      image: 'assets/images/models/model1.png',
      price: 59.99,
    ),
    ProductModel(
      title: 'Top man black with Trous..',
      image: 'assets/images/models/model1.png',
      price: 24.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 7,
            mainAxisSpacing: 2,
            childAspectRatio: 1 / 2,
          ),
          itemCount: products.length, // Example item count
          itemBuilder: (context, index) {
            return ProductItem(
              image: products[index].image,
              title: products[index].title,
              price: products[index].price,
            ); // Replace with your product item widget
          },
        ),
      ),
    );
  }
}
