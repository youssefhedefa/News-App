import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:newsapplication/network/remote/dio_helper.dart';
import 'package:newsapplication/views/search%20cubit/search_view_state.dart';

class SearchViewCubit extends Cubit<SearchViewState> {
  SearchViewCubit() : super(SearchViewInitialState());

  List<dynamic> search = [];

  void getSearchData(String value) {
    search = [];
    emit(SearchViewLoadingState());
    DioHelper.getData(url: 'v2/everything', query: {
      'q': value,
      'apiKey': '8e77649b18e145fdb6e3031a54ac3770',
    }).then((value) {
      search = value.data['articles'];
      emit(SearchViewSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(SearchViewFailureState(error.toString()));
    });
  }
}
