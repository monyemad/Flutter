import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/shop/layout/home_cubit/home_cubit.dart';
import 'package:test_application/shop/layout/home_cubit/home_state.dart';
import 'package:test_application/shop/models/image.dart';
// import 'package:test_application/shop/models/home_model.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return state is ShopLoadingHomeDataState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                )
              : Column(
                  children: [
                    CarouselSlider(
                      items: const [
                        Image(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR4P0F90fss-D6_y12AQYxZZ8wxBBXb5Nm5wHmAKft4-memt1Nu3XsYLXq5ntxmstVCHs&usqp=CAU'),
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Image(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT326FP2c-MyIgq0qlPAkX78tranwWvjlc7kVpJmTuG-XlpRkSq3OT9xe-B7RTU1uoDofo&usqp=CAU'),
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ],
                      options: CarouselOptions(
                        height: 250,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                        viewportFraction: 1.0,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 220,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 3 / 2,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          // return PictureImage(image: image[index]);
                        },
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
