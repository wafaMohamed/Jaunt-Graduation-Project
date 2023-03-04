import 'package:flutter/material.dart';
import 'package:jaunt/utilities/route/routes.dart';
import 'package:jaunt/view/pages/Auth/SignUp.dart';
import 'package:jaunt/view/pages/Auth/loginScreen.dart';
import 'package:jaunt/view/pages/onBoardingScreens/onboarding_screen.dart';

import '../../view/pages/splashScreen.dart';


Route<dynamic> onGenerate(RouteSettings routeSettings){

  switch(routeSettings.name){
    case AppRoutes.splashScreenRoute:
      return MaterialPageRoute(builder: (_)=>const splashScreen(),
      settings:  routeSettings
      );
    case AppRoutes.onBoardingScreenRoute:
      return MaterialPageRoute(builder: (_)=>
      const onBoardingScreen(),
      settings: routeSettings
      );
    case AppRoutes.loginRoute:
   return MaterialPageRoute(builder: (_)=> login(),
          settings: routeSettings
      );
  case AppRoutes.signUpScreenRoute:
  default:return MaterialPageRoute(builder: (_)=> signUpScreen(),
  settings: routeSettings
  );

  }

}