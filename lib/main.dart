import 'package:azkar/Layout/home_layout.dart';
import 'package:azkar/module/resoures/routes_manager.dart';
import 'package:azkar/shared/bloc_observer.dart';
import 'package:azkar/shared/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'module/resoures/theme_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context)=>AppCubit()..readJson(context),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: Routes.splashRoute,
          themeMode: ThemeMode.dark,
          theme: getAppTheme,
          home: const HomePage(),
        ),
      );
  }
}

