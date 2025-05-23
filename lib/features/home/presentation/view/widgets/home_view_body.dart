import 'package:booklyapp/features/home/presentation/view/widgets/categary_card_listview.dart';
import 'package:booklyapp/features/home/presentation/view/widgets/home_view_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeViewHeader(),
        const SizedBox(height: 10),
        const CategaryCardListView(),
      ],
    );
  }
}
