import 'package:fashionapplication/views/home_page.dart';
import 'package:fashionapplication/widgets/animation_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  @override
 void initState() {
  Future.delayed(const Duration(seconds: 4), () {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => const HomePage(),
    ));
  });
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: SvgPicture.asset('assets/logo/logo.svg')),
          Gap(10),
          AnimationLine(),
        ],
      ),
    );
  }
}

