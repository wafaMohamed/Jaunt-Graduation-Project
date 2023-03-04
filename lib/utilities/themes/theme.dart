import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'apptheme.dart';
class Themes{
  static ThemeData lightTheme =ThemeData(
    colorScheme: const ColorScheme.light(
      primary:AppTheme.purpleSplashWight
    ),
    iconTheme: const IconThemeData(
      color: AppTheme.purpleSplashWight
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppTheme.purpleSplashWight
    ),
    scaffoldBackgroundColor: AppTheme.purpleSplashWight,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppTheme.purpledeep,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppTheme.purpleSplashWight
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppTheme.purpledeep),
      fillColor: MaterialStateProperty.all(Color(0xebc4176a))
    ),
    toggleButtonsTheme: const ToggleButtonsThemeData(
      selectedBorderColor: Colors.transparent,
      borderColor: Colors.transparent,
    ),
  );
 static ThemeData darkTheme =ThemeData(
    colorScheme: const ColorScheme.dark(
        primary:AppTheme.purpledeep
    ),
    iconTheme: const IconThemeData(
        color: AppTheme.purpledeep
    ),
    buttonTheme: const ButtonThemeData(
        buttonColor: AppTheme.purpledeep
    ),
    scaffoldBackgroundColor: AppTheme.purpledeep,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppTheme.purpledeep,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppTheme.purpledeep
      ),
    ),
    checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(AppTheme.purpledeep),
        fillColor: MaterialStateProperty.all(Color(0xebc4176a))
    ),
    toggleButtonsTheme: const ToggleButtonsThemeData(
      selectedBorderColor: Colors.transparent,
      borderColor: Colors.transparent,
  ));
}