import 'package:app_new/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Colors.purple,Colors.deepPurple),
      ),
    ),
  );
}
