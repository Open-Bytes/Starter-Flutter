import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:starterflutter/app/AppStartUpFlow.dart';
import 'package:starterflutter/app/di/AppInjector.dart';
import 'package:starterflutter/common/presentation/cubit/app_cubit.dart';
import 'package:starterflutter/common/presentation/screen/app_stateless.dart';

import 'app/app.dart';
import 'common/presentation/error_handler.dart';
import 'common/presentation/screen/app_stateless.dart';
import 'common/presentation/screen/app_stateless.dart';
import 'common/presentation/screen/app_stateless.dart';

void main() {
  App().setup();

  runZonedGuarded(() {
    runApp(MainScreen());
  }, (Object error, StackTrace stack) {
    getIt.get<AppErrorHandler>().onStackError(stack);
  });
}

class MainScreen extends AppStatelessScreen {
  @override
  onInitState() {
    // TODO: implement onInitState
  }

  @override
  content() {
    return MultiBlocProvider(
      providers: AppInjector().blocs(),
      child: MaterialApp(
        title: 'Starter Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AppStartUpFlow.mainScreen(),
      ),
    );
  }

  ///if you want Bloc with Provider , replace MaterialApp with MultiProvider
// child: MultiProvider(
//         providers: AppInjector().providers(),

}
