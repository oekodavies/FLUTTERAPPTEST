import 'package:flutter/material.dart';

class CareerScreen extends StatelessWidget {
  const CareerScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext ctxt) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Careers"),
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