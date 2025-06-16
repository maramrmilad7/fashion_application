import 'package:device_preview/device_preview.dart';
import 'package:fashionapplication/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const FashionApp(),
  ));
}
class FashionApp extends StatelessWidget {
  const FashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context), // Add this line
      home:SplashScreen() ,
    );
  }
}


