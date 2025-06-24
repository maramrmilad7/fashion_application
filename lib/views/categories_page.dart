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
        ],
      ),
    );
  }
}


