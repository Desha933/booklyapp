import 'package:booklyapp/constant.dart';
import 'package:booklyapp/features/presentation/view/widgets/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimarycolor),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
