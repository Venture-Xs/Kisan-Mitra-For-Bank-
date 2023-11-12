import 'package:flutter/material.dart';
import 'package:kisan_mitra_for_bank/home_page.dart';
import 'package:kisan_mitra_for_bank/pallete.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Pallete.whiteColor,
      ),
      home: const HomePage(),
    );
  }
}
