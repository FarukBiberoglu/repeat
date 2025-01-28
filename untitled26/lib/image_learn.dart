import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageLearn extends StatefulWidget {
  const ImageLearn({super.key});

  @override
  State<ImageLearn> createState() => _ImageLearnState();
}

class _ImageLearnState extends State<ImageLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImagePaths.ic_apple_with_school.towidget()
    );
  }
}

enum ImagePaths {
  ic_apple_with_school
}
extension ImagePathExtension on  ImagePaths {
  String path(){
    return 'assets/png/$name.png' ;
  }
  Widget towidget(){
    return Image.asset(path());
  }
}