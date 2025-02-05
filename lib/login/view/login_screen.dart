import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testh/home/view/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset(
                "assets/svgs/logo.png",
                width: 220,
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter email",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),
              SizedBox(
                height: 20,
              ),


              TextField(
                decoration: InputDecoration(
                  hintText: "Enter password",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),



              SizedBox(
                height: 40,
              ),
              Container(
                  width: double.infinity,
                  color: Colors.black,
                  child: CupertinoButton(
                      child: Text(
                        "login",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
