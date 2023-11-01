import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_application/shop/login.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({required this.image, required this.title, required this.body});
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({
    super.key,
  });

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        image:
            'https://img.freepik.com/free-vector/father-son-buying-food-supermarket_74855-5245.jpg',
        title: 'On Board 1 title',
        body: 'On Board 1 body'),
    BoardingModel(
        image:
            'https://img.freepik.com/free-vector/father-son-buying-food-supermarket_74855-5245.jpg',
        title: 'On Board 2 title',
        body: 'On Board 2 body'),
    BoardingModel(
        image:
            'https://img.freepik.com/free-vector/father-son-buying-food-supermarket_74855-5245.jpg',
        title: 'On Board 3 title',
        body: 'On Board 3 body'),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const Login();
                },
              ));
            },
            child: const Text(
              'SKIP',
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index){
                  if (index == boarding.length-1){
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                    controller: boardController,
                    count: boarding.length,
                  effect: const ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    dotHeight: 15,
                    dotWidth: 15,
                    expansionFactor: 4,
                    spacing: 5,
                    activeDotColor: Colors.deepPurple,
                  ),
                ),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if (isLast){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return const Login();
                        },
                      ));
                    } else {
                      boardController.nextPage(
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: NetworkImage('${model.image}'),
            ),
          ),
          Text(
            '${model.title}',
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            '${model.body}',
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      );
}
