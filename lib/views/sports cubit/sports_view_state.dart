abstract class SportsViewStates{}

class SportsViewInitial extends SportsViewStates{}

class SportsViewLoading extends SportsViewStates{}

class SportsViewSuccess extends SportsViewStates{}

class SportsViewFailure extends SportsViewStates{
  final String errMessage;

  SportsViewFailure(this.errMessage);
}