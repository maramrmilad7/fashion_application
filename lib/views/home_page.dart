import 'package:fashionapplication/widgets/BoottomNavigationBar.dart';
import 'package:fashionapplication/widgets/CategoreisList.dart';
import 'package:fashionapplication/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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


