import 'package:flutter/material.dart';
import 'package:newsapplication/views/widget/custom_news_item.dart';
import 'package:newsapplication/views/widget/custom_separator.dart';


class CustomNewsList extends StatelessWidget {
  const CustomNewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) => const CustomNewsItem(),
        separatorBuilder: (context, index) => const CustomSeparator(),
        itemCount: 20,
      ),
    );
  }
}

