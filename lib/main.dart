import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mammamagic/screens/auth-ui/sign-in-screen.dart';
import 'package:mammamagic/screens/auth-ui/sign-up-screen.dart';
import 'package:mammamagic/screens/user-panel/main-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignInScreen(),
    );
  }
}
