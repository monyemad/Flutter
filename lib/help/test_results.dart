import 'package:flutter/material.dart';

class TestResultScreen extends StatelessWidget {
  const TestResultScreen({super.key});

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
            children: [
              const Text(
                'Test results',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Text(
                  'We are currently checking the  DNA to find a match',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Icon(
                Icons.person_rounded,
                size: 80,
                color: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'OR',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const Icon(
                Icons.person_rounded,
                size: 80,
                color: Colors.green,
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.upload_rounded,
                    size: 80,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Upload your DNA',
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
