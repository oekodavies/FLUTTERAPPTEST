import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext ctxt) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("About this"),
        ),
        body: const Text(
          'Drawer Header',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        )
    );
  }
}