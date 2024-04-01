import 'package:flutter/material.dart';
import 'package:shopping_app/common/color_ext.dart';
import 'package:shopping_app/login/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scaler Mart',
      theme: ThemeData(
        fontFamily: "Gilroy",
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        useMaterial3: false,
      ),
      home: const SplashView(),
    );
  }
}
