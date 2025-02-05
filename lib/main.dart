import 'package:flutter/material.dart';

import 'onbaord/view/onboard_screen.dart';

void main() {
  runApp(const Testh());
}

class Testh extends StatelessWidget {
  const Testh({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardScreen() ,
    );
  }
}
