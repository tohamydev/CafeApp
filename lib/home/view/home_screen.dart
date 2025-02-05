import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/svgs/onboard1.svg",
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ice Moka" , style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("300 EGP" ,style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Text("Ice Amrecano")
                    ],
                  ),
                )

              ],
            ),
          ),
          Divider(height: 0.5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/svgs/onboard1.svg",
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ice Moka" , style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("300 EGP" ,style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Text("Ice Amrecano")
                    ],
                  ),
                )

              ],
            ),
          ),
          Divider(height: 0.5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/svgs/onboard1.svg",
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ice Moka" , style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("300 EGP" ,style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                      Text("Ice Amrecano")
                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
