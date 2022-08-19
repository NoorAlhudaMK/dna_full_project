import 'package:flutter/material.dart';

import 'Screens/AttendanceListScreen/attendance_list_screen.dart';
import 'Screens/DoctorScreen/doctor_screen_screen.dart';
import 'Screens/LoadDataScreen/load_data_screen.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/QRScreen/qr_screen.dart';
import 'Screens/NotificationScreen/notification_screen.dart';
import 'Screens/SignUpScreen/sign_up_screen.dart';
import 'Screens/SplashScreen/splash_screen.dart';
import 'Screens/StudentListScreen/student_list_screen.dart';
import 'Screens/WelcomeScreen/welcome_screen.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: const SignUpScreen(),
  ));
}