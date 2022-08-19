import 'package:flutter/material.dart';

import '../../MyWidgets/my_widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  MyWidgets _widgets = MyWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            bottom: 22, top: MediaQuery.of(context).size.height * 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              "assets/logo.png",
              width: 260,
              height: 260,
            )),
            Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " بكم",
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 38,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Cairo"),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Column(
                        children: [
                          Text(
                            "أهلاً",
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 38,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Cairo",
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 4,
                            color: Color(0xFF6344EE),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "جامعة التكنولوجيا و الاعلام",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Cairo"),
                  ),
                ],
              ),
            ),
            _widgets.buildAuthenButton(Color(0xFF6344EE), "انشاء حساب"),
            _widgets.buildAuthenButton(Color(0xFF4DC2F8), "تسجيل الدخول"),
            _widgets.buildForgetPasswordSection(),
            _widgets.buildVisitorButton(
                Colors.grey.shade400, "تسجيل الدخول كزائر :)"),
          ],
        ),
      ),
    );
  }
}
