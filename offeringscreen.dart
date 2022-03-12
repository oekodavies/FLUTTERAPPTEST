import 'package:flutter/material.dart';

class OfferingScreen extends StatelessWidget {
  const OfferingScreen({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext ctxt) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Offerings"),
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