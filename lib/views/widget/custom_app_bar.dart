import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_cubit.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<NewsViewCubit>(context);
    return Container(
      height:98,
      padding: const EdgeInsets.only(
        top: 32,
        right: 16,
        left: 16,
      ),
      child: Row(
        children: [
          const Text(
            'News Application',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          IconButton(onPressed: () {},
              icon: const Icon(Icons.search)
          ),
          const SizedBox(
            width: 6,
          ),
          IconButton(
            onPressed: () {
              cubit.changeAppMode();
            },
            icon: const Icon(Icons.mode_night_rounded),
          ),
        ],
      ),
    );
  }
}
