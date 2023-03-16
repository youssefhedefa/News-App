import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_cubit.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_state.dart';
import 'package:newsapplication/views/widget/custom_app_bar.dart';
import 'package:newsapplication/views/widget/custom_bottom_bar.dart';
import 'package:newsapplication/views/widget/custom_news_list.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsViewCubit, NewsViewState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BlocProvider.of<NewsViewCubit>(context);
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
      },
    );
  }
}
