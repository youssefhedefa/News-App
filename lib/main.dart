import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/bloc_observer.dart';
import 'package:newsapplication/network/local/cache_helper.dart';
import 'package:newsapplication/network/remote/dio_helper.dart';
import 'package:newsapplication/views/business%20cubit/business_view_cubit.dart';
import 'package:newsapplication/views/economy%20cubit/economy_view_cubit.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_cubit.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_state.dart';
import 'package:newsapplication/views/news_view.dart';
import 'package:newsapplication/views/search%20cubit/search_view_cubit.dart';
import 'package:newsapplication/views/sports%20cubit/sports_view_cubit.dart';

void main() async {
  //to ensure that all future method is initialized
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NewsViewCubit()),
        BlocProvider(
            create: (context) => BusinessViewCubit()..getBusinessNews()),
        BlocProvider(
            create: (context) => EconomyViewCubit()..getEconomicNews()),
        BlocProvider(create: (context) => SportsViewCubit()..getSportsNews()),
        BlocProvider(create: (context) => SearchViewCubit()),

      ],
      //create: (context) => NewsViewCubit(),
      child: BlocConsumer<NewsViewCubit, NewsViewState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BlocProvider.of<NewsViewCubit>(context);
          return MaterialApp(
            title: 'News Application',
            theme: ThemeData(
              primarySwatch: Colors.orange,
              brightness: cubit.recallMode('appMode'),
              appBarTheme: const AppBarTheme(
                color: Colors.white54,
              ),
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: Colors.orange,
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: const NewsView(),
            //home: const SearchView(),

          );
        },
      ),
    );
  }
}
//SearchView
