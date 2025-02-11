import 'package:flutter/material.dart';
import 'package:testh/settings_model.dart';
import 'package:testh/widgets/gridview_component.dart';
import 'package:testh/widgets/gridview_item.dart';

class SecondScreen extends StatelessWidget {
  final List<DataModel> data = [
    DataModel(icon: Icons.person, title: "mohamed", count: 1),
    DataModel(icon: Icons.home, title: "villa", count: 1),
    DataModel(icon: Icons.details, title: "ok", count: 2),
  ];

  SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  ),

                  hintText: "Search",

                  prefixIcon: Icon(Icons.search),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
                  ),

                  hintText: "enter name",

                  prefixIcon: Icon(Icons.person),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
                  ),

                  hintText: "enter phone",

                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
                  ),

                  hintText: "enter adress",

                  prefixIcon: Icon(Icons.home),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
                  ),

                  hintText: "enter password",

                  prefixIcon: Icon(Icons.password),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
                  ),

                  hintText: "enter email",

                  prefixIcon: Icon(Icons.email),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
                  ),

                  hintText: "enter pin",

                  prefixIcon: Icon(Icons.email),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
                  ),

                  hintText: "enter Bio",

                  prefixIcon: Icon(Icons.eco),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),
                  ),

                  hintText: "enter birth data",

                  prefixIcon: Icon(Icons.eco),
                ),
              ),


            ],
          ),
        ),
      ),
    );  }
}
