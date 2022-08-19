import 'package:flutter/material.dart';

import '../../MyWidgets/my_widgets.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  MyWidgets _widgets = MyWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding:
            const EdgeInsets.only(top: 40.0, bottom: 20.0, left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            buildDoctorCard(),
            const SizedBox(
              height: 80.0,
            ),
            buildCircleButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _widgets.buildDoctorScreenButton("الحضور"),
                _widgets.buildDoctorScreenButton("سجل الطلاب"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _widgets.buildDoctorScreenButton("جدول المحاضرات"),
                _widgets.buildDoctorScreenButton("ارسال تنبيه"),
              ],
            ),
            const SizedBox(
              height: 60.0,
            ),
            _widgets.buildNotificationWidget(),
          ],
        ),
      )),
    );
  }

  Widget buildCircleButton() {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 60.0,
        ),
        child: Container(
          width: 220,
          height: 220,
          decoration: const BoxDecoration(
              color: Color(0xFFEF475A), shape: BoxShape.circle),
          child: const Icon(
            Icons.power_settings_new,
            color: Colors.white,
            size: 80,
          ),
        ),
      ),
    );
  }

  Widget buildDoctorCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/logo.png',
          width: MediaQuery.of(context).size.width * 0.24,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "دكتورة براء أحمد",
              style: TextStyle(
                  fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "برمجة - المرحلة الثالثة",
              style: TextStyle(
                  fontSize: 16.0, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ],
    );
  }

}
