import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.prefixIcon,
    required this.postfexIcon,
    required this.title,
  });
  final String prefixIcon, postfexIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                prefixIcon,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SvgPicture.asset(
              postfexIcon,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
          ],
        ),
      ),
    );
  }
}
