import 'package:flutter/material.dart';

import '../settings_model.dart';
import 'gridview_item.dart';

class GridviewComponent extends StatelessWidget {
  final List<DataModel> data ;
  GridviewComponent({super.key ,required this.data});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20,
          mainAxisSpacing: 16,
          crossAxisCount: 2,
          childAspectRatio: 153 / 132),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return GridviewItem(
          index: index,
          icon: data[index].icon,
          title: data[index].title,
          count: data[index].count,
        );
      },
    );
  }
}
