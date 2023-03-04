import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jaunt/utilities/route/router.dart';
import 'package:jaunt/utilities/route/routes.dart';
import 'package:jaunt/utilities/themes/theme.dart';
import 'package:jaunt/view_model/color_cubit/cubit.dart';
import 'package:jaunt/view_model/color_cubit/states.dart';
import 'package:jaunt/view_model/data/local/shared.dart';
import 'package:sizer/sizer.dart';


void main() {
  runApp((const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
          return Sizer(builder: (context, orientation, deviceType) {
            return MaterialApp(
             /* theme: ThemeData(
                fontFamily: 'Montserrat',
                  textTheme: ThemeData.light().textTheme.copyWith(
                headline5: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold

                ),
              ),
              ),*/
              debugShowCheckedModeBanner: false,
              onGenerateRoute: onGenerate,
              initialRoute: AppRoutes.splashScreenRoute,
              //   home: LoginPage()
            );
          });

  }
}
