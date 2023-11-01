import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/news/business.dart';
import 'package:test_application/news/dio.dart';
import 'package:test_application/news/news_cubit/news_state.dart';
import 'package:test_application/news/science.dart';
import 'package:test_application/news/sports.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitialStates());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeBottomNavbar(int index) {
    currentIndex = index;
    emit(NewsBottomNavStates());
  }

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.business_center_rounded), label: 'Business'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.sports_rounded), label: 'Sports'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.science_rounded), label: 'Science'),
  ];

  List<Widget> screen = [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
  ];

  List<Map> business = [];

  void getBusiness() {
    emit(NewsGetBusinessLoadingStates());
    DioHelper.getData(url: 'v2/everything', queries: {
      'q': 'tesla',
      'from': '2023-10-01',
      'sortBy': 'publishedAt',
      'apiKey': 'f23e15d2ce0a4b79a110011cc4ea4037',
    }).then((value) {
      business = value.data['articles'];
      print(business[0]['title']);

      emit(NewsGetBusinessSuccessStates());
    }).catchError((e) {
      print(e.toString());

      emit(NewsGetBusinessErrorStates(e.toString()));
    });
  }
}
