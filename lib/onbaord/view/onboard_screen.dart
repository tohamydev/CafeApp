import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testh/login/view/login_screen.dart';
import 'package:testh/onbaord/model/onboard_model.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  List<OnboardModel> data = [
    OnboardModel("assets/svgs/onboard1.svg", "Choose and customize your Drinks",
        "Customize your own drink exactly how you like it by adding any topping you like!!!"),
    OnboardModel("assets/svgs/onboard2.svg", "Quickly and easly",
        "You can place your order quickly and easly without wasting time. You can also schedule orders via your smarthphone."),
    OnboardModel("assets/svgs/onboard3.svg", "Get and Redeem Voucher",
        "Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!")
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                      padding: EdgeInsets.only(right: 50, top: 50),
                      child: SvgPicture.asset(
                        data[currentIndex].imgPath,
                        width: 280,
                        height: 261,
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 165,
                  child: Column(
                    children: [
                      Text(
                        data[currentIndex].title,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        data[currentIndex].subTitle,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 156,
                      height: 48,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              if (currentIndex < data.length - 1) {
                                currentIndex++;
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              }
                            });
                          },
                          child: Text("NEXT")),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
