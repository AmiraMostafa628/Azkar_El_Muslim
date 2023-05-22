import 'package:azkar/module/resoures/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize,FontWeight fontWeight ,Color color,
    {String fontFamily = FontConstants.fontFamily}){

  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      height: 1.5
  );
}

// regular style

TextStyle getRegularStyle({double fontSize = FontSize.s12,required Color color,String fontFamily=FontConstants.fontFamily2})
{
  return _getTextStyle(fontSize,FontWeightManager.semiBold,color,fontFamily: fontFamily);
}

// medium style

TextStyle getMediumStyle({double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize,FontWeightManager.medium,color);
}

// light style

TextStyle getLightStyle({double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize,FontWeightManager.light,color);
}

// SemiBold style

TextStyle getSemiBoldStyle({double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize,FontWeightManager.semiBold,color);
}

// Bold style

TextStyle getBoldStyle({double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize,FontWeight.w700,color);
}

