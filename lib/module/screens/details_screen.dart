import 'package:audioplayers/audioplayers.dart';
import 'package:azkar/models/jsonModel.dart';
import 'package:azkar/module/resoures/assets_manager.dart';
import 'package:azkar/module/resoures/color_manager.dart';
import 'package:azkar/module/resoures/font_manager.dart';
import 'package:azkar/module/resoures/values_manager.dart';
import 'package:azkar/shared/cubit/cubit.dart';
import 'package:azkar/shared/cubit/states.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreen extends StatelessWidget {

  final JsonModel jsonModel;

  const DetailsScreen({super.key,required this.jsonModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkPrimary,
      appBar:AppBar(
        centerTitle: true,
        title:  Text(jsonModel.category.toString(),
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontSize: FontSize.s25
          ),
        ),
      ),
      body: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context,state){
          return ConditionalBuilder(
            condition: jsonModel.data.isNotEmpty ,
            builder: (context){
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                        itemBuilder: (context,index){
                          return  buildItem(jsonModel.data[index],context);
                        },
                      itemCount: jsonModel.data.length,
                    ),
                  ),
                ],
              );
            },
            fallback: (context)=>const Center(child: CircularProgressIndicator()),
          );
        },

      ),

    );
  }

  Widget buildItem(JsonDataModel model,context)
  {
    return Padding(
      padding: const EdgeInsets.only(top: AppPadding.p10,left: AppPadding.p10,right: AppPadding.p10),
      child: Card(
        color: ColorManager.primary,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        elevation: AppSize.s5,
        margin:EdgeInsets.zero,
        child: Padding(
        padding: const EdgeInsets.all(AppPadding.p10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  try{

                    AudioCache player = AudioCache(prefix:audioPath );
                    player.play("${model.filename}.mp3");
                  }
                  catch(ex)
                  {
                    print(ex);
                  }
                },
                child: CircleAvatar(
                  backgroundColor: ColorManager.darkGreen,
                  radius: AppSize.s15,
                  child:   const Icon(
                    Icons.play_arrow,
                    size: AppSize.s18,
                    color: ColorManager.white,
                  ),
                ),
              ),
              Center(
                child: Text(
                  '${model.text}',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textDirection: TextDirection.rtl,


                ),
              ),
              const SizedBox(height: AppSize.s5,),
              Container(
                height: AppSize.s38,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorManager.darkGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('${model.count}',
                 textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
              )
              )],

          ),
        ),
      ),
    );
  }
}



