import 'package:flutter/material.dart';

import 'grid_view.dart';
import 'list_view.dart';
import 'list_tile_exp.dart';
import 'stack_design.dart';
import 'onbaord/view/onboard_screen.dart';

void main() {
  runApp(const Testh());
}

class Testh extends StatelessWidget {
  const Testh({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewSceen() ,
    );
  }
}
