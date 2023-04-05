class SearchViewState{}

class SearchViewInitialState extends SearchViewState{}

class SearchViewLoadingState extends SearchViewState{}

class SearchViewSuccessState extends SearchViewState{}

class SearchViewFailureState extends SearchViewState{
  final String errMessage;

  SearchViewFailureState(this.errMessage);
}