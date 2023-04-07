import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_cubit.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_state.dart';
import 'package:newsapplication/views/widget/custom_bar.dart';
import 'package:newsapplication/views/widget/custom_bottom_bar.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsViewCubit, NewsViewState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BlocProvider.of<NewsViewCubit>(context);
        return Scaffold(
          appBar: const CustomBar(),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    cubit.changeView(index);
                    return cubit.views[cubit.currentIndex];
                  },
                  itemCount: cubit.views.length,
                ),
              ),
              //cubit.views[cubit.currentIndex],
            ],
          ),
          bottomNavigationBar: const CustomBottomNavBar(),
        );
      },
    );
  }
}
