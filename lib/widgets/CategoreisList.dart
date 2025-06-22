import 'package:fashionapplication/models/categories_model.dart';
import 'package:fashionapplication/widgets/categories_avatar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoreisList extends StatelessWidget {
  const CategoreisList({super.key});
  static List<CategoriesModel> items = [
    CategoriesModel(title: 'Deals', image: 'assets/images/Category/Deals.png'),
    CategoriesModel(
      title: 'Health',
      image: 'assets/images/Category/Health.png',
    ),
    CategoriesModel(title: 'Kids', image: 'assets/images/Category/Kids.png'),
    CategoriesModel(title: 'Men', image: 'assets/images/Category/Men.png'),
    CategoriesModel(title: 'Women', image: 'assets/images/Category/Women.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(15),
              Text(
                'Categories',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Gap(10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: items.map((item) {
                    return CategoriesAvatar(
                      title: item.title,
                      image: item.image,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}