import 'package:flutter/material.dart';

class NewDesign extends StatelessWidget {
  const NewDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 300,
                      width: 250,
                      decoration:  BoxDecoration(
                        color: Colors.purple.withOpacity(0.5),

                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      margin: const EdgeInsets.only(top: 30 , left: 30 , right: 30 , bottom: 30),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration:  BoxDecoration(
                        color: Colors.purple.withOpacity(0.5),

                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      margin: const EdgeInsets.only(top: 30 , left: 30 , right: 30 , bottom: 40),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      width: 440,
                      decoration:  BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Color(0XFFFF888C), Colors.purple],
                        ),

                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      margin: const EdgeInsets.only(top: 30 , left: 30 , right: 30 , bottom: 50),
                    ),
                  ),
                  Positioned(
                      left: 50,
                      top: 45,
                      child: Text("Logo", style: TextStyle(fontSize: 30 , color: Colors.white , fontWeight: FontWeight.bold),)),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
