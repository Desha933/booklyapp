import 'package:booklyapp/core/ulits/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetsImage.logo,
      height: 60,
      width: 100,
      color: Colors.blue,
    );
  }
}
