import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:newsapplication/network/remote/dio_helper.dart';
import 'package:newsapplication/views/business%20cubit/business_view_state.dart';

class BusinessViewCubit extends Cubit<BusinessViewStates> {
  BusinessViewCubit() : super(BusinessViewInitial());

  List<dynamic> businessList = [];

  void getBusinessNews() {
    emit(BusinessViewLoading());
    DioHelper.getData(
        url:'v2/top-headlines',
        query: {
      'country': 'us',
      'category': 'general',
      'apiKey': '8e77649b18e145fdb6e3031a54ac3770',
    }).then((value) {
      //debugPrint(value.data['articles'][0]['title'].toString());
      businessList = value.data['articles'];
      emit(BusinessViewSuccess());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(BusinessViewFailure(error.toString()));
    });
  }
}
