import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/bloc.dart';
import 'package:test_application/news/news_layout.dart';

void main()
{
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.grey,
        ),
        appBarTheme: const AppBarTheme(
          // systemOverlayStyle: SystemUiOverlayStyle(
          //   statusBarColor: Colors.white,
          //   statusBarBrightness: Brightness.light,
          // ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          color: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple,
          elevation: 0,
        ),
        fontFamily: 'Agbalumo',
      ),
      home: const NewsLayout(),
    );
  }
}
