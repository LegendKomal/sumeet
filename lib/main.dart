import 'package:flutter/material.dart';
import 'package:sumeet/screen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}



  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      ),
    );
  }

