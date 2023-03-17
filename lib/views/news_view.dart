import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/network/remote/dio_helper.dart';
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
            children: [
              const CustomAppBar(),
              cubit.views[cubit.currentIndex],
              //CustomNewsList(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              DioHelper.getData(url: 'v2/top-headlines', query: {
                'sources': 'bbc-news',
                'apiKey': '8e77649b18e145fdb6e3031a54ac3770',
              })
                  .then((value) => debugPrint(value.data['articles'][2]['title'].toString()))
                  .catchError((error) {
                debugPrint(error.toString());
              });
            },
            child: const Icon(Icons.icecream_sharp),
          ),
          bottomNavigationBar: const CustomBottomNavBar(),
        );
      },
    );
  }
}
