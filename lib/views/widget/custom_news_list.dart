import 'package:flutter/material.dart';
import 'package:newsapplication/views/widget/custom_news_item.dart';
import 'package:newsapplication/views/widget/custom_separator.dart';


class CustomNewsList extends StatelessWidget {
  const CustomNewsList({Key? key, this.listLength}) : super(key: key);

  final int? listLength;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) => const CustomNewsItem(),
        separatorBuilder: (context, index) => const CustomSeparator(),
        itemCount: listLength ?? 10,
      ),
    );
  }
}

