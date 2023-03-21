abstract class EconomyViewStates{}

class EconomyViewInitial extends EconomyViewStates{}

class EconomyViewLoading extends EconomyViewStates{}

class EconomyViewSuccess extends EconomyViewStates{}

class EconomyViewFailure extends EconomyViewStates{
  final String errMessage;

  EconomyViewFailure(this.errMessage);
}