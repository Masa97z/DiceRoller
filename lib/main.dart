import 'package:flutter/material.dart';

import 'package:roll_app/gradient_container.dart';


void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer( [
        Color.fromARGB(255, 231, 104, 104),
        Color.fromARGB(255, 235, 199, 199)]) ,
    ),
  ));
}


