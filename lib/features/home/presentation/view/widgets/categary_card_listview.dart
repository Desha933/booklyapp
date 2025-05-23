import 'package:booklyapp/constant.dart';
import 'package:booklyapp/features/home/presentation/view/widgets/categary_card.dart';
import 'package:flutter/material.dart';

class CategaryCardListView extends StatelessWidget {
  const CategaryCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .2 + kBorderofcard,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: const CategaryCard(),
          );
        },
      ),
    );
  }
}
