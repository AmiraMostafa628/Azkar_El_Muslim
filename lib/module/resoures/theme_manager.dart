import 'package:azkar/module/resoures/color_manager.dart';
import 'package:azkar/module/resoures/font_manager.dart';
import 'package:azkar/module/resoures/style_manager.dart';
import 'package:azkar/module/resoures/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData getAppTheme = ThemeData(
    //main colors
    primaryColor: ColorManager.primary,
    splashColor: ColorManager.darkPrimary,
    scaffoldBackgroundColor: ColorManager.white,// ripple effect Color

    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,

    ),

    appBarTheme: AppBarTheme(
      backgroundColor:  ColorManager.darkGreen,
      iconTheme: const IconThemeData(color: ColorManager.white),
      elevation: AppSize.s0,
      systemOverlayStyle:  SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: ColorManager.darkPrimary,
      ),
      titleTextStyle: getRegularStyle(fontSize:FontSize.s22,color: ColorManager.white),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
       textStyle: getRegularStyle(fontSize:FontSize.s17,color: ColorManager.white),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)
        )
      ),
    ),

    textTheme: TextTheme(
      displayLarge: getBoldStyle(fontSize:FontSize.s20,color: ColorManager.white),
      headlineMedium:getBoldStyle(fontSize:FontSize.s20,color: ColorManager.white) ,
      titleMedium: getMediumStyle(fontSize:FontSize.s14,color: ColorManager.cyan),
      titleSmall: getRegularStyle(fontSize:FontSize.s16,color: ColorManager.white),
      bodyLarge: getRegularStyle(color: ColorManager.white,fontSize: FontSize.s18),
      bodyMedium: getBoldStyle(fontSize:FontSize.s20,color: ColorManager.white),
      labelSmall: getBoldStyle(fontSize:FontSize.s35,color: ColorManager.white),
      bodySmall: getBoldStyle(fontSize:FontSize.s30,color: ColorManager.white),
    ),


  );
