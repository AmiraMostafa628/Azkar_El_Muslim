import 'package:azkar/Layout/home_layout.dart';
import 'package:azkar/models/jsonModel.dart';
import 'package:azkar/module/resoures/string_manager.dart';
import 'package:azkar/module/screens/details_screen.dart';
import 'package:azkar/module/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes{
  static const String splashRoute = "/splash";
  static const String homeRoute = "/home";
  static const String detailsRoute = "/details";
}

class RouteGenerator{

  static Route<dynamic> getRoute(RouteSettings settings)
  {
    switch (settings.name)
    {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_)=>const SplashScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_)=>const HomePage());
      case Routes.detailsRoute:
        return MaterialPageRoute(builder: (_)=>  DetailsScreen(
          jsonModel: settings.arguments as JsonModel,));
      default:
        return unDefindedRoute();


    }
  }

  static Route<dynamic> unDefindedRoute()
  {
    return MaterialPageRoute(builder: (_)=> Scaffold(
      appBar: AppBar(
        title:  const Text(AppStrings.noRouteFound,)
      ),
      body: const Center(child: Text(AppStrings.noRouteFound,)),
    ));
  }
}