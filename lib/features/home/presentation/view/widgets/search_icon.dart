import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.search,
        color: Colors.blue,
        size: MediaQuery.sizeOf(context).width * .09,
      ),
    );
  }
}
