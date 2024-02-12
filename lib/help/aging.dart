import 'package:flutter/material.dart';

class EvolutionScreen extends StatelessWidget {
  const EvolutionScreen({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image:
                AssetImage("assets/images/face aging.png"),
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 23.5),
                child: Center(
                  child: Text(
                    '"Please import the photo to predict the shape in five years"',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.import_export_rounded,
                    size: 60,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Import image',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepPurple,
                      ),
                    ),
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
