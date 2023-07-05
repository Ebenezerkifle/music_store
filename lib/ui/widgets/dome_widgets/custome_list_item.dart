import 'package:flutter/material.dart';

class CustomeListItem extends StatelessWidget {
  const CustomeListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Colors.blueAccent,
    );
  }
}
