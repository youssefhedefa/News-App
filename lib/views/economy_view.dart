import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/views/economy%20cubit/economy_view_cubit.dart';
import 'package:newsapplication/views/economy%20cubit/economy_view_state.dart';
import 'package:newsapplication/views/widget/custom_news_list.dart';

class EconomyView extends StatelessWidget {
  const EconomyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EconomyViewCubit,EconomyViewStates>(
      builder: (BuildContext context, state) {
        var economyCubit = BlocProvider.of<EconomyViewCubit>(context);
        return state is EconomyViewLoading?const Center(child: CircularProgressIndicator()): CustomNewsList(
          list: economyCubit.economyList,
        );
      },
    );
  }
}
