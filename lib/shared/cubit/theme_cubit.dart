import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/shared/cubit/theme_states.dart';
import '../network/local/cache_helper.dart';


class ThemeCubit extends Cubit<ThemeStates> {
  ThemeCubit() : super(NewsInitialModeState());
  static ThemeCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  void changeAppMode({bool? fromShared}){
    if(fromShared != null) {
      isDark = fromShared;
      emit(NewsChangeModeState());
    }else{
      isDark = !isDark;
      CacheHelper.putData(key: 'isDark', value: isDark).then((value){
        emit(NewsChangeModeState());
      });
    }
  }
}

