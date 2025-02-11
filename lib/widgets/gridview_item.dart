import 'package:flutter/material.dart';

class GridviewItem extends StatelessWidget {
  final int index;
  final IconData icon;
  final String title;
  final int count;
  const GridviewItem({super.key , required this.index, required this.icon, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 5,
            decoration: BoxDecoration(
              color: index % 4 < 2 ? Colors.blue :Colors.red,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  count.toString(),
                  style: TextStyle(fontSize: 10, color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
