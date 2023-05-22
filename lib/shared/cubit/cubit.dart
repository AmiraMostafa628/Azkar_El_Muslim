import 'dart:convert';
import 'package:azkar/models/jsonModel.dart';
import 'package:azkar/module/resoures/assets_manager.dart';
import 'package:azkar/shared/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() :super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);



 List <JsonModel>? jsonModel=[];

// Fetch content from the json file
  Future<void> readJson(context) async {
      emit(AppLoadingJsonTextStates());
      String data = await DefaultAssetBundle.of(context).loadString(JsonAssets.jsonText);
      final jsonResult = jsonDecode(data);
      for (var element in jsonResult)
      {
        jsonModel!.add(JsonModel.fromJson(element));
      }

  }
}
