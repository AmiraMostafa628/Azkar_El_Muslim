import 'dart:async';
import 'package:azkar/module/resoures/color_manager.dart';
import 'package:azkar/module/resoures/constant_Manager.dart';
import 'package:azkar/module/resoures/font_manager.dart';
import 'package:azkar/module/resoures/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() async{
    Navigator.pushNamedAndRemoveUntil(context, Routes.homeRoute, (route) => false);

  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkGreen,
      body: Center(child: Text('أذكار المسلم',
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
      color: ColorManager.white,
      fontSize: FontSize.s80,
    ),),
    ));
    }

    @override
    void dispose() {
      super.dispose();
      _timer?.cancel();

    }
  }