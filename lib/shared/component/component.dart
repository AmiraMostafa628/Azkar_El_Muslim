import 'package:azkar/module/resoures/color_manager.dart';
import 'package:azkar/module/resoures/font_manager.dart';
import 'package:azkar/module/resoures/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget categoryItem(
    {
      required double height,
      required double width,
      required Color color,
      required String text,
      required Function() onTap,
      required BuildContext context,
    }
    )
{
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding:  const EdgeInsets.symmetric(horizontal: AppPadding.p10,vertical: AppPadding.p8),
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(AppSize.s20)
        ),
        padding: const EdgeInsets.all(AppPadding.p8),
        alignment: Alignment.centerRight,
        height: height,
        width: width,

        child: Text(text,
          textDirection: TextDirection.rtl,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: ColorManager.white,
            fontSize: FontSize.s25,
          ),

        ),
      ),
    ),
  );
}

