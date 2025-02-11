import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testh/second_screen.dart';
import 'package:testh/settings_model.dart';
import 'package:testh/third_screen.dart';
import 'package:testh/widgets/gridview_component.dart';

class GridViewSceen extends StatelessWidget {
  final List<DataModel> data = [
    DataModel(icon: Icons.person, title: "Account", count: 1),
    DataModel(icon: Icons.home, title: "Home", count: 1),
    DataModel(icon: Icons.settings, title: "general", count: 1),
    DataModel(icon: Icons.details, title: "Details", count: 1),
  ];

  GridViewSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('GridView Example'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                icon: Icon(Icons.arrow_forward_ios))
          ],
        ),
        body: GridviewComponent(
          data: data,
        ),
      ),
    );
  }
}
