import 'package:flutter/material.dart';

class CustomSeparator extends StatelessWidget {
  const CustomSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey[500],
      ),
    );
  }
}
