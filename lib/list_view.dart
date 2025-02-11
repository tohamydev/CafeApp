import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomStyle extends StatelessWidget {
  const CustomStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: RefreshIndicator(
              onRefresh: () {
                return Future.delayed(Duration(seconds: 3));
              },
              child: ListView.separated(
                  itemBuilder: (context, index) => Container(
                        width: double.infinity,
                        height: 60,
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
                          children: [
                            Container(
                              width: 5,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.newspaper_sharp,
                              size: 30,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              flex: 9,
                              child: Text(
                                'محمد التهامي رجل الاعمال المشهور يفتتح مدينه التهامي العالميه',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(fontSize: 20, color: Colors.black),
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "100",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            )
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: 100),
            )),
      )),
    );
  }
}
