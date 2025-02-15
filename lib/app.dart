import 'package:crafty_bay/presentation/ui/screen/splash_screen.dart';
import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColors,
        scaffoldBackgroundColor: Colors.white,
        progressIndicatorTheme:
            ProgressIndicatorThemeData(color: AppColors.themeColors),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        inputDecorationTheme: InputDecorationTheme(

              border: _outlineInputBorder(),
              enabledBorder: _outlineInputBorder(),
              errorBorder: _outlineInputBorder(Colors.red),
              focusedBorder: _outlineInputBorder(),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w500         ),
          contentPadding:
            const EdgeInsets.symmetric(horizontal: 16,vertical: 8)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeColors,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20,),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              ),
              textStyle: Theme.of(context).textTheme.bodyLarge,
              fixedSize: const Size.fromWidth(double.maxFinite)
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style:TextButton.styleFrom(
            foregroundColor: AppColors.themeColors,
            textStyle: TextStyle(fontSize: 16)
          )
        )
      ),
    );
  }
  OutlineInputBorder _outlineInputBorder([Color? color]){
    return OutlineInputBorder(
      borderSide: BorderSide(color: color?? AppColors.themeColors,width: 1.5),
      borderRadius: BorderRadius.circular(14)
    );
  }
}
