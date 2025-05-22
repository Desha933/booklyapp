import 'package:booklyapp/features/home/presentation/view/widgets/logo.dart';
import 'package:booklyapp/features/home/presentation/view/widgets/search_icon.dart';
import 'package:flutter/material.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 15, top: 40, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Logo(), SearchIcon()],
      ),
    );
  }
}
