abstract class BusinessViewStates{}

class BusinessViewInitial extends BusinessViewStates{}

class BusinessViewLoading extends BusinessViewStates{}

class BusinessViewSuccess extends BusinessViewStates{}

class BusinessViewFailure extends BusinessViewStates{
  final String errMessage;

  BusinessViewFailure(this.errMessage);
}