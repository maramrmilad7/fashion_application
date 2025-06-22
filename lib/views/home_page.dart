import 'package:fashionapplication/models/categories_model.dart';
import 'package:fashionapplication/widgets/BoottomNavigationBar.dart';
import 'package:fashionapplication/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});
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
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/pexels-frendsmans-1926769.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          CustomAppBar(
            prefixIcon: 'assets/svg/menu.svg',
            title: 'Runway',
            postfexIcon: 'assets/svg/notification.svg',
          ),
          CategoreisList(),
        ],
      ),
      bottomNavigationBar: BoottomNavigationBar(),
    );
  }
}

class CategoreisList extends StatelessWidget {
  const CategoreisList({super.key});

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
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10),
              Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Gap(10),
              CategoriesAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesAvatar extends StatelessWidget {
  const CategoriesAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/Category/Deals.png'),
        ),
        Gap(10),
        Text(
          'Deals',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
