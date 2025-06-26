import 'package:fashionapplication/widgets/categories_filter.dart';
import 'package:fashionapplication/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ProductDetailes extends StatefulWidget {
  const ProductDetailes({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });
  final String image, title;
  final double price;

  @override
  State<ProductDetailes> createState() => _ProductDetailesState();
}

class _ProductDetailesState extends State<ProductDetailes> {
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.4,
          minChildSize: 0.4,
          maxChildSize: 0.8,
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return bottomSheet(scrollController);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            CustomAppBar(
              prefixIcon: 'assets/svg/arrow-left.svg',
              postfexIcon: 'assets/svg/cart.svg',
              title: 'Men',
            ),
            CategoryFilter(),
            Stack(
              children: [
                Center(
                  child: SizedBox(
                    width: 250,
                    height: 600,

                    child: Image.asset(widget.image),
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
          ],
        ),
      ),
    );
  }

  Widget bottomSheet(scrollController) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),

      width: double.infinity,
      padding: EdgeInsets.all(12),

      child: ListView(
        controller: scrollController,

        children: [
          Center(
            child: Container(
              width: 42,
              height: 6,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Gap(16),
          Text(
            maxLines: 1,
            widget.title,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Gap(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                r'$' + widget.price.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              // Spacer(),
              // Gap(150),
              Row(
                children: [
                  Icon(Icons.favorite_border, color: Colors.red, size: 16),
                  Gap(10),
                  Text(
                    '455',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(42),
          Container(
            padding: EdgeInsets.all(10),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.black12, width: 0.7),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Select Color',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Gap(10),
                    SvgPicture.asset('assets/svg/select.svg'),
                  ],
                ),
                Container(width: 3, color: Colors.black12, height: 15),

                Row(
                  children: [
                    Text(
                      'Select Size',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Gap(10),
                    SvgPicture.asset('assets/svg/select.svg'),
                  ],
                ),
              ],
            ),
          ),
          Gap(21),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Center(
              child: Text(
                'ADD TO BAG',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
