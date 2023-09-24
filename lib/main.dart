import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/shared/cubit/bloc_observer.dart';
import 'modules/shop_app/on_boarding_Screen.dart';
import 'shared/cubit/theme_cubit.dart';
import 'shared/styles/themes.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeCubit.get(context).isDark? ThemeMode.dark: ThemeMode.light,
      home: const OnBoardingScreen(),
    );
  }
}


