/*
  * Created by Ahmed Tawfik on 11/1/2022
*/
abstract class ResourceState {}

class InitResource extends ResourceState {}

class LoadingResource extends ResourceState {}

class ResultResource<T> extends ResourceState {
  late T result;

  ResultResource({required this.result});
}

class SuccessResource extends ResourceState {}

class RefreshResource extends ResourceState {}

class ErrorResource extends ResourceState {
  String? error = "";
  late Exception exception; //TODO:

  ErrorResource({this.error}) {
    //TODO: u can handle some errors here
  }
}
