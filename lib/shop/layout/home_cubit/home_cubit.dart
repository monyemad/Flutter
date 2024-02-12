import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:test_application/constants.dart';
import 'package:test_application/end_points.dart';
import 'package:test_application/news/dio.dart';
import 'package:test_application/shop/layout/categories.dart';
import 'package:test_application/shop/layout/favorites.dart';
import 'package:test_application/shop/layout/home_cubit/home_state.dart';
import 'package:test_application/shop/layout/products.dart';
import 'package:test_application/shop/layout/settings.dart';
import 'package:test_application/shop/models/home_model.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeBottomNavbar(int index) {
    currentIndex = index;
    emit(HomeBottomNavState());
  }

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home_rounded), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.apps_rounded), label: 'Categories'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.favorite_rounded), label: 'Favorites'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.settings_rounded), label: 'Settings'),
  ];

  List<Widget> screen = [
    const ProductsScreen(),
    const CategoriesScreen(),
    const FavoritesScreen(),
    const SettingsScreen(),
  ];

  late final HomeModel homeModel;

  void getHomeData() {
    emit(ShopLoadingHomeDataState());

    DioHelper.getData(
      url: HOME,
      // token: token,
    ).then((value) {
      homeModel = HomeModel.fromJson(value.data);

      // printFullText(homeModel.data.banners[0].image);
      print(homeModel.status);

      emit(ShopSuccessHomeDataState());
    }).catchError((e) {
      print(e.toString());
      emit(ShopErrorHomeDataState());
    });
  }
}
