import 'package:flutter/material.dart';

class MyWidgets {
  Widget buildAuthenButton(Color color, String text) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: 250,
        height: 60,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "Cairo"),
          ),
        ),
      ),
    );
  }

  Widget buildForgetPasswordSection() {
    return Padding(
      padding: EdgeInsets.only(
        top: 60,
        bottom: 60,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Text("هل نسيت كلمة السر"),
          ),
          Container(
            width: 100,
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget buildVisitorButton(Color color, String text) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 150,
        height: 30,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontFamily: "Cairo"),
          ),
        ),
      ),
    );
  }

  Widget buildSubjectsListButton(Color color, String text, Icon icon) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 200,
        height: 60,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.white, fontSize: 16, fontFamily: "Cairo"),
              ),
              SizedBox(
                width: 8,
              ),
              icon,
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNotificationWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.arrow_drop_up_outlined,
          color: Colors.grey.shade600,
          size: 40,
        ),
        Text(
          "اشعارات",
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 26,
          ),
        ),
      ],
    );
  }

  Widget buildDoctorScreenButton(String text) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 150,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFF6447EF),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }

  Widget buildFilterButton(String text, Icon icon) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 360,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFF6447EF),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Padding(padding: EdgeInsets.only(left: 15, right: 90,),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.list_alt_sharp,
                    color: Colors.white,
                    size: 26,
                  ),
                ],
              ),
            ],
          ),),
        ),
      ),
    );
  }

  Widget buildStudentInformationCard(String title, String subTitle) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Colors.white,
      shadowColor: Colors.grey.shade400,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      elevation: 8,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              Text(
                title,
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold,),
              ),
              Text(
                subTitle,
                style: TextStyle(
                    fontSize: 14.0, fontWeight: FontWeight.w300, ),
              ),
            ],
          ),
            Image.asset(
              'assets/logo.png',
              width: 100,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNotificationButton() {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF6444EC),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "الاشعارات",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: "Cairo"),
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNotificationCard() {
    return Card(
      margin: EdgeInsets.all(12),
      color: Colors.white,
      shadowColor: Colors.grey.shade400,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      elevation: 8,
      child: Container(
        padding: EdgeInsets.all(5),
        width: 340,
        height: 160,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "نور الهدى مهند كاظم",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Cairo",
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "برمجة - مرحلة رابعة",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Cairo",
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Icon(
                    Icons.notifications_active,
                    color: Color(0xFF6444EC),
                    size: 30,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "2022-08-17 11:44",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Cairo",
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 210,
                    height: 1,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 10, right: 10,),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(
                  fontFamily: "Cairo",
                  fontSize: 10,
                  color: Colors.grey,
                ),),)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String text) {
    return Container(
      padding: EdgeInsets.only(right: 15),
      margin: EdgeInsets.only(bottom: 12),
      width: 340,
      height: 45,
      decoration: BoxDecoration(
        color: Color(0xFFACACAD).withOpacity(0.4),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontFamily: "Cairo"
            ),
          ),
        ],
      ),
    );
  }
}













