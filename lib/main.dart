
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/cubit/my_app_cubit.dart';
import 'package:test_application/screens/sign_in/first_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = AppBlocObserver();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppCubitA()..getDataFromFirebase(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: FirstScreen(),
        ));
  }
}
