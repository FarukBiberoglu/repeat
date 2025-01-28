import 'package:flutter/material.dart';
import 'package:untitled26/oop_learn.dart';

class OopLearnView extends StatefulWidget {
  const OopLearnView({super.key});

  @override
  State<OopLearnView> createState() => _OopLearnViewState();
}

class _OopLearnViewState extends State<OopLearnView> {
  FileDownload? download ;
   @override
  void initState() {

    super.initState();
    download = FileDownload();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed:() {
        download?.downloadItem(null);
      },),
    );
  }
}
