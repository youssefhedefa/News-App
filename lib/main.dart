import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/bloc_observer.dart';
import 'package:newsapplication/network/remote/dio_helper.dart';
import 'package:newsapplication/views/business%20cubit/business_view_cubit.dart';
import 'package:newsapplication/views/economy%20cubit/economy_view_cubit.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_cubit.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_state.dart';
import 'package:newsapplication/views/news_view.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NewsViewCubit()),
        BlocProvider(create: (context) => BusinessViewCubit()..getBusinessNews()),
        BlocProvider(create: (context) => EconomyViewCubit()..getEconomicNews() )
      ],
      //create: (context) => NewsViewCubit(),
      child: BlocConsumer<NewsViewCubit,NewsViewState>(
        listener: (context,state){},
        builder: (context,state){
          var cubit = BlocProvider.of<NewsViewCubit>(context);
          return MaterialApp(
            title: 'News Application',
            theme: ThemeData(
              primarySwatch: Colors.orange,
              brightness: cubit.appMode,
            ),
            debugShowCheckedModeBanner: false,
            home: const NewsView(),
          );
        },
      ),
    );
  }
}


