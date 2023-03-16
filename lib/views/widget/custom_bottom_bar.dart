import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_cubit.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_state.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsViewCubit,NewsViewState>(
      builder: (context,state){
        var cubit = BlocProvider.of<NewsViewCubit>(context);
        return BottomNavigationBar(
          onTap: (index){
            cubit.changeView(index);
          },
          currentIndex: cubit.currentIndex,
          items: cubit.bottomNavList,
        );
      },
    );
  }
}
