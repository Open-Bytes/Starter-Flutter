import 'package:starterflutter/common/core/state/resource_state.dart';

/*
  * Created by Ahmed Tawfik on 11/1/2022
*/
enum ResultState { success, error }

ResultState resultState(int value) {
  if (value == 0) return ResultState.error;
  return ResultState.success;
}

//TODO: encapsulate into ResourceState
 extension InsertStateMapper on ResultState {
  toState() {
    switch (this) {
      case ResultState.success:
        return SuccessResource();
      case ResultState.error:
        return ErrorResource();
    }
  }
}
