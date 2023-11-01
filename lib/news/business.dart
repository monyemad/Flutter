import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/default.dart';
import 'package:test_application/news/news_cubit/news_cubit.dart';
import 'package:test_application/news/news_cubit/news_state.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context,state) {},
      builder: (context,state) {
        // var list = NewsCubit.get(context).business;
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => buildArticleItem(NewsCubit.get(context).business[index]),
          separatorBuilder: (context, index) => myDivider(),
          itemCount: 10,

        );
      },
    );
  }
}
