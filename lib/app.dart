import 'package:crafty_bay/presentation/ui/screen/splash_screen.dart';
import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColors,
        scaffoldBackgroundColor: Colors.white,
        progressIndicatorTheme:
            ProgressIndicatorThemeData(color: AppColors.themeColors),
      ),
    );
  }
}
