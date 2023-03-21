import 'package:flutter/material.dart';
import 'package:newsapplication/views/widget/custom_news_item.dart';
import 'package:newsapplication/views/widget/custom_separator.dart';


class CustomNewsList extends StatelessWidget {
  const CustomNewsList({Key? key, required this.list}) : super(key: key);

  final List<dynamic> list;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) => CustomNewsItem(item: list[index]),
        separatorBuilder: (context, index) => const CustomSeparator(),
        itemCount: list.length,
      ),
    );
  }
}

