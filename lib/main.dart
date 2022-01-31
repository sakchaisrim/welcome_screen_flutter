import 'package:flutter/material.dart';
import 'package:welcome_screen_flutter/welcome_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: WelcomePage(),
    );
  }
}
