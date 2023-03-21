import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:newsapplication/network/remote/dio_helper.dart';
import 'package:newsapplication/views/economy%20cubit/economy_view_state.dart';

class EconomyViewCubit extends Cubit<EconomyViewStates> {
  EconomyViewCubit() : super(EconomyViewInitial());

  List<dynamic> economyList = [];

  void getEconomicNews() {
    emit(EconomyViewLoading());
    DioHelper.getData(
        url:'v2/top-headlines',
        query: {
          'country': 'us',
          'category': 'technology',
          'apiKey': '8e77649b18e145fdb6e3031a54ac3770',
        }).then((value) {
      //debugPrint(value.data['articles'][0]['title'].toString());
      economyList = value.data['articles'];
      emit(EconomyViewSuccess());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(EconomyViewFailure(error.toString()));
    });
  }
}
