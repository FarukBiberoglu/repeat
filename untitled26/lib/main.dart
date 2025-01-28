import 'package:flutter/material.dart';
import 'package:untitled26/202/tab_learn.dart';
import 'package:untitled26/animated_learn.dart';
import 'package:untitled26/image_learn.dart';
import 'package:untitled26/oop_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:  TabLearn(),
    );
  }
}

