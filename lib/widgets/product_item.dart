import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.image,
    required this.title,
    required this.price, this.onTap,
  });
  final String image, title;
  final double price;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Color(0xffECECEC),
              borderRadius: BorderRadius.circular(16),
            ),
            height: 250,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      image,
                      //  fit: BoxFit.contain,
                    ),
                  ),
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
            title,
            maxLines: 1,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Gap(7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                '\$$price',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              // Spacer(),
              // Gap(150),
              Icon(Icons.favorite_border, color: Colors.red, size: 16),
            ],
          ),
        ],
      ),
    );
  }
}
