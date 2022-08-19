import 'package:flutter/material.dart';

import '../MyWidgets/my_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MyWidgets _widgets = MyWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            bottom: 22, top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
                  "assets/logo.png",
                  width: 140,
                  height: 140,
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 60),
              child: Column(
                children: [
                  Text(
                    "جامعة التكنولوجيا و الاعلام",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Cairo"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Future",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,),
                          ),
                          Container(
                            width: 60,
                            height: 2,
                            color: Color(0xFF6344EE),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "of E-university",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _widgets.buildTextField("الاسم الكامل للطالب"),
            _widgets.buildTextField("القسم"),
            SizedBox(height: 20,),
            _widgets.buildAuthenButton(Color(0xFF4DC2F8), "تسجيل الدخول"),
          ],
        ),
      ),
    );
  }
}
