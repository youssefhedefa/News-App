import 'package:flutter/material.dart';
import 'package:newsapplication/views/widget/custom_app_bar.dart';
import 'package:newsapplication/views/widget/custom_bottom_bar.dart';
import 'package:newsapplication/views/widget/custom_news_list.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        mainAxisSize: MainAxisSize.max,
        children: const [
          CustomAppBar(),
          CustomNewsList(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}




