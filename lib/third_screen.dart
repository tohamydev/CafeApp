import 'package:flutter/material.dart';

import 'custom_text_input.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                    children: [
            CustomTextInput(
              hintText: 'Email',
              prefixIcon: Icons.email,
            ),
            SizedBox(height: 20),
            CustomTextInput(
              hintText: 'Password',
              prefixIcon: Icons.lock,
            ),
            SizedBox(height: 20),
            CustomTextInput(
              hintText: 'addrees',
              prefixIcon: Icons.home,
            ),
            SizedBox(height: 20),
            CustomTextInput(
              hintText: 'Phone',
              prefixIcon: Icons.phone,
            ),
            SizedBox(height: 20),
            CustomTextInput(
              hintText: 'Name',
              prefixIcon: Icons.person,
            ),
            SizedBox(height: 20),
            CustomTextInput(
              hintText: 'Password',
              prefixIcon: Icons.lock,
            ),    SizedBox(height: 20),
            CustomTextInput(
              hintText: 'Phone',
              prefixIcon: Icons.phone,
            ),
            SizedBox(height: 20),
            CustomTextInput(
              hintText: 'Bio',
              prefixIcon: Icons.person,
            ),
            SizedBox(height: 20),
            CustomTextInput(
              hintText: 'Password',
              prefixIcon: Icons.lock,
            ),




                    ],
                  ),
          )),
    );
  }
}
