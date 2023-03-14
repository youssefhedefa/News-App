import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height:85,
      padding: const EdgeInsets.only(
        top: 32,
        right: 16,
        left: 16,
      ),
      child: Row(
        children: [
          const Text(
            'News Application',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          IconButton(onPressed: () {},
              icon: const Icon(Icons.search)
          ),
          const SizedBox(
            width: 6,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mode_night_rounded),
          ),
        ],
      ),
    );
  }
}
