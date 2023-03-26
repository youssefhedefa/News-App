import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/views/business%20cubit/business_view_cubit.dart';
import 'package:newsapplication/views/business%20cubit/business_view_state.dart';
import 'package:newsapplication/views/widget/custom_news_list.dart';

class BusinessView extends StatelessWidget {
  const BusinessView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BusinessViewCubit,BusinessViewStates>(
      builder: (context,state){
        var businessCubit = BlocProvider.of<BusinessViewCubit>(context);
        return state is BusinessViewLoading?const Center(child: CircularProgressIndicator(),):CustomNewsList(list: businessCubit.businessList,);
        //return  Text(businessCubit.businessList[4]['title'].toString());
      } ,
    );
  }
}
