import 'package:flutter/material.dart';
import 'modules/login_app/login_screen.dart';
import 'modules/shop_app/on_boarding_screen/on_boarding_screen.dart';
import 'shared/styles/themes.dart';

void main() {
  runApp(const MyApp());
  // Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: OnBoardingScreen(),
    );
  }
}


