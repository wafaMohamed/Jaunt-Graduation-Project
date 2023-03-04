import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jaunt/view_model/color_cubit/states.dart';
import '../../utilities/enums/enums.dart';
import '../data/local/shared.dart';

class ColorCubit extends Cubit<ColorState>{
  ColorCubit(): super(ColorInitial());
  static ColorCubit get(context)=>BlocProvider.of(context);

  bool isDarkTheme = false;
  void changeAppTheme(){
    isDarkTheme =!isDarkTheme;
    MyCache.putBool(key: MyCacheKey.theme, value: isDarkTheme);
   emit(ChangeColorTheme());
  }

  void getTheme(){
    isDarkTheme =MyCache.getBool(key: MyCacheKey.theme);
    emit(GetColorTheme());
  }



}