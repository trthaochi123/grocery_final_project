import 'package:flutter/material.dart';

class MySubPage extends StatefulWidget {
  const MySubPage({super.key});

  @override
  State<StatefulWidget> createState() => _MySubPageState();
}

class _MySubPageState extends State<MySubPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("MySubPage"),
    );
  }


}
