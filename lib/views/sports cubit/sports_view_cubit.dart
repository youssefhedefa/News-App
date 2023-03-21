import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:newsapplication/network/remote/dio_helper.dart';
import 'package:newsapplication/views/sports%20cubit/sports_view_state.dart';

class SportsViewCubit extends Cubit<SportsViewStates> {
  SportsViewCubit() : super(SportsViewInitial());

  List<dynamic> sportsList = [];

  void getSportsNews() {
    emit(SportsViewLoading());
    DioHelper.getData(
        url:'v2/top-headlines',
        query: {
          'country': 'us',
          'category': 'sports',
          'apiKey': '8e77649b18e145fdb6e3031a54ac3770',
        }).then((value) {
      //debugPrint(value.data['articles'][0]['title'].toString());
      sportsList = value.data['articles'];
      emit(SportsViewSuccess());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(SportsViewFailure(error.toString()));
    });
  }
}
