import 'package:flutter/material.dart';

class CategaryCard extends StatelessWidget {
  const CategaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .2,
      child: Expanded(
        child: AspectRatio(
          aspectRatio: 1 / 1.5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
