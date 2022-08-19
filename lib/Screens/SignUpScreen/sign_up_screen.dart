import 'package:flutter/material.dart';

import '../../MyWidgets/my_widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  MyWidgets _widgets = MyWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            bottom: 22, top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
                  "assets/logo.png",
                  width: 120,
                  height: 120,
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
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
            _widgets.buildTextField("المرحلة"),
            _widgets.buildTextField("البريد الالكتروني"),
            _widgets.buildTextField("رقم الهاتف"),
            _widgets.buildTextField("المحافظة"),
            _widgets.buildTextField("المنطقة"),
            buildAddImageCircle(),
            _widgets.buildAuthenButton(Color(0xFF6344EE), "انشاء حساب"),
          ],
        ),
      ),
    );
  }

  Widget buildAddImageCircle() {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        border: Border.all(
          color: Colors.black45,
          width: 5,
        ),
      ),
      child: Icon(Icons.add_a_photo, color: Colors.black45, size: 30,),
    );
  }
}
