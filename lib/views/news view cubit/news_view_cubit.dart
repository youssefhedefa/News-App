import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:newsapplication/network/local/cache_helper.dart';
import 'package:newsapplication/views/economy_view.dart';
import 'package:newsapplication/views/news%20view%20cubit/news_view_state.dart';
import 'package:newsapplication/views/business_view.dart';
import 'package:newsapplication/views/sports_view.dart';

class NewsViewCubit extends Cubit<NewsViewState> {
  NewsViewCubit() : super(NewsViewInitialize());

  List<BottomNavigationBarItem> bottomNavList = const [
    BottomNavigationBarItem(
      label: 'Business',
      icon: Icon(Icons.business_sharp),
    ),
    BottomNavigationBarItem(
      label: 'technology',
      icon: Icon(Icons.laptop_chromebook_outlined),
    ),
    BottomNavigationBarItem(
      label: 'Sports',
      icon: Icon(Icons.sports_basketball_rounded),
    ),
  ];

  List<Widget> views = const [
    BusinessView(),
    EconomyView(),
    SportsView(),
  ];

  int currentIndex = 0;

  void changeView(int index) {
    currentIndex = index;
    emit(NewsViewChangeViewSuccess());
  }

  Brightness appMode = Brightness.light;

  Brightness changeAppMode() {
    if (appMode == Brightness.light)
    {
      appMode = Brightness.dark;
      CacheHelper.setData('appMode', 'dark');
    }
    else if (appMode == Brightness.dark)
    {
      appMode = Brightness.light;
      CacheHelper.setData('appMode', 'light');
    }
    emit(NewsViewChangeModeSuccess());
    return appMode;
  }

  Brightness recallMode(String key){
    String mode = CacheHelper.getData(key)??'';
    if(mode == 'dark')
    {
      return Brightness.dark;
    }
    else if(mode == 'light')
    {
      return Brightness.light;
    }
    return Brightness.light;
  }


}
