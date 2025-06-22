import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoriesAvatar extends StatelessWidget {
  const CategoriesAvatar({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(radius: 35, backgroundImage: AssetImage(image)),
          Gap(10),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
