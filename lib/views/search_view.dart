import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/views/search%20cubit/search_view_cubit.dart';
import 'package:newsapplication/views/search%20cubit/search_view_state.dart';
import 'package:newsapplication/views/widget/custom_bar.dart';
import 'package:newsapplication/views/widget/custom_news_list.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchViewCubit,SearchViewState>(
      listener: (context,state){},
      builder: (context,state){
        var searchCubit = BlocProvider.of<SearchViewCubit>(context);
        return Scaffold(
            appBar: const CustomBar(),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(

                      prefixIcon:const Icon(Icons.search),
                      label:const Text('Search'),
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    onChanged: (value){
                      searchCubit.getSearchData(value);
                    },
                  ),
                  CustomNewsList(list: searchCubit.search),
                ],
              ),
            ));
      },
    );
  }
}
