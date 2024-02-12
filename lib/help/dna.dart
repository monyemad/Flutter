import 'package:flutter/material.dart';

class DnaScreen extends StatelessWidget {
  const DnaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffCDFFD8), Color(0xff94B9FF)],
              stops: [0.2, 0.6],
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              // transform: GradientRotation(13)
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RotatedBox(
                  quarterTurns: 3,
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Expanded(
                      child: Image(
                        image: AssetImage('assets/images/DNA.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/lab icon.png'),
                    height: 160,
                    width: 160,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Alfa\nlaboratories',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/lab icon.png'),
                    height: 160,
                    width: 160,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Al Mokhtabar',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/lab icon.png'),
                    height: 160,
                    width: 160,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Al Mokhtabar',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
