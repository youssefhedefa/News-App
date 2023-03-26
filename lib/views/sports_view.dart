import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/views/sports%20cubit/sports_view_cubit.dart';
import 'package:newsapplication/views/sports%20cubit/sports_view_state.dart';
import 'package:newsapplication/views/widget/custom_news_list.dart';

class SportsView extends StatelessWidget {
  const SportsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SportsViewCubit, SportsViewStates>(
      builder: (context, state) {
        var sportsCubit = BlocProvider.of<SportsViewCubit>(context);
        return state is SportsViewLoading?const Center(child: CircularProgressIndicator(),): CustomNewsList(
          list: sportsCubit.sportsList,
        );
      },
    );
  }
}
