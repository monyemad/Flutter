import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/end_points.dart';
import 'package:test_application/news/dio.dart';
import 'package:test_application/shop/login_cubit/login_state.dart';

class ShopLoginCubit extends Cubit<ShopLoginStates> {
  ShopLoginCubit() : super(ShopLoginInitial());

  static ShopLoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required String email,
    required String password,
}) {
    emit(ShopLoginLoadingStates());

    DioHelper.postData(
        url: LOGIN,
        data: {
          'email': email,
          'password': password,
        },).then((value){
          print(value.data);
          emit(ShopLoginSuccessStates());
    }).catchError((e){
      print(e.toString());

      emit(ShopLoginErrorStates(e.toString()));
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility(){
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(ShopChangePasswordVisibilityStates());
  }
}
