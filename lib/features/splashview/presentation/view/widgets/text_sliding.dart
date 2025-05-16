import 'package:booklyapp/core/ulits/assets.dart';
import 'package:flutter/material.dart';

class CustomTextSliding extends StatelessWidget {
  const CustomTextSliding({super.key, required this.slidinganimation});

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidinganimation,
      child: const Text(
        'Bookly...',
        style: TextStyle(fontFamily: AssetsFont.pacificofont, fontSize: 30),
      ),
    );
  }
}
