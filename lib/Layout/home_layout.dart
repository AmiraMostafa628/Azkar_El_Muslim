import 'package:azkar/module/resoures/color_manager.dart';
import 'package:azkar/module/resoures/font_manager.dart';
import 'package:azkar/module/resoures/routes_manager.dart';
import 'package:azkar/shared/component/component.dart';
import 'package:azkar/shared/cubit/cubit.dart';
import 'package:azkar/shared/cubit/states.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkPrimary,
      appBar: AppBar(
        title:  Align(
          alignment: Alignment.centerRight,
          child: Text('أذكار المسلم',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: ColorManager.white,
              fontSize: FontSize.s35,
          ),
          ),
        ),
      ),
      body: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context, state) {
          var model = AppCubit.get(context).jsonModel;

          return ConditionalBuilder(
            condition: model !=null ,
            builder: (context){
              return ListView.builder(
                  itemBuilder: (context,index){
                    return categoryItem(
                        height: 50,
                        width: double.infinity,
                        color: ColorManager.primary,
                        text: model[index].category!,
                        context: context,
                        onTap: ()  {

                          Navigator.of(context).pushNamed(Routes.detailsRoute,arguments: model[index]);
                        }
                    );
                  },
                  itemCount: model!.length);
            },
            fallback: (context)=> Center(child: CircularProgressIndicator(color: ColorManager.primary,)),
          );
        },
      ),
    );
  }
}



