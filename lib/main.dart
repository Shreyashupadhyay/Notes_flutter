import 'package:flutter/material.dart';
import 'package:noted_flutter/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        
        useMaterial3: true,
        brightness: Brightness.dark
      ),
      home: const Homescreen(),
    );
  }
}


  