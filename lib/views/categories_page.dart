import 'package:fashionapplication/widgets/categories_filter.dart';
import 'package:fashionapplication/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            prefixIcon: 'assets/svg/arrow-left.svg',
            title: 'Men',
            postfexIcon: 'assets/svg/cart.svg',
          ),
          Gap(10),
          CategoryFilter(),
          Gap(5),
          ProductItem(),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffECECEC),
            borderRadius: BorderRadius.circular(16),
          ),
          height: 250,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Center(child: Image.asset('assets/images/models/model1.png')),
                Positioned(
                  right: 10,
                  left: 10,
                  bottom: 0,

                  child: Image.asset('assets/images/shadow.png'),
                ),
              ],
            ),
          ),
        ),
        Gap(7),

        Text(
          'Top man black',
          maxLines: 1,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Gap(7),
        Row(
          children: [
            Text(
              '\$50',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Gap(150),
            Icon(Icons.favorite_border, color: Colors.red, size: 16),
          ],
        ),
      ],
    );
  }
}
