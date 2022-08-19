import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../MyWidgets/my_widgets.dart';

class QRScreen extends StatefulWidget {
  const QRScreen({Key? key}) : super(key: key);

  @override
  State<QRScreen> createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  MyWidgets _widgets = MyWidgets();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            bottom: 30, top: MediaQuery.of(context).size.height * 0.06),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Center(
                   child: Image.asset(
                     "assets/logo.png",
                     width: 180,
                     height: 180,
                   )),
               Text(
                 "Noor Alhuda M.K.",
                 style: TextStyle(
                   color: Colors.grey.shade500,
                   fontSize: 28,
                   fontWeight: FontWeight.w400,
                 ),
               ),
             ],
           ),
            QrImage(
              data: "https://www.instagram.com/dnascholarship/",
              version: QrVersions.auto,
              size: 200.0,
              embeddedImage: AssetImage('assets/img.png'),
              embeddedImageStyle: QrEmbeddedImageStyle(
                size: Size(80, 80),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "المرحلة الثالثة",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "قسم تكنولوجيا الاعلام",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            _widgets.buildSubjectsListButton(
                Color(0xFF6447EF),
                "انشاء حساب",
                Icon(
                  Icons.list_alt_sharp,
                  color: Colors.white,
                  size: 22,
                )),
            _widgets.buildNotificationWidget(),
          ],
        ),
      ),
    );
  }
}
