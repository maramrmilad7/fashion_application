import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 52,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          children: [
            Text(
              'Sort By',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Gap(23),
            SvgPicture.asset('assets/svg/select.svg'),
            Spacer(),
            SvgPicture.asset('assets/svg/filter.svg'),
            Gap(10),

            Text(
              'Filter',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Gap(20),

            SvgPicture.asset('assets/svg/grid.svg'),
            Gap(20),
            SvgPicture.asset('assets/svg/groups.svg'),
          ],
        ),
      ),
    );
  }
}