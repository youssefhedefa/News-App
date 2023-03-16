import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_cubit.dart';
import 'package:newsapplication/views/news_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsViewCubit(),
      child: MaterialApp(
        title: 'News Application',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          brightness: Brightness.light,
        ),
        debugShowCheckedModeBanner: false,
        home: const NewsView(),
      ),
    );
  }
}


