import 'package:flutter/material.dart';

import '../../MyWidgets/my_widgets.dart';

class AttendanceList extends StatefulWidget {
  const AttendanceList({Key? key}) : super(key: key);

  @override
  State<AttendanceList> createState() => _AttendanceListState();
}

class _AttendanceListState extends State<AttendanceList> {
  MyWidgets _widgets = MyWidgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
            top: 70,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _widgets.buildFilterButton("سجل الطلاب", Icon(
                  Icons.filter_list,
                  color: Colors.black,
                  size: 28,
                ),),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ListView(
                    children: [
                      _widgets.buildStudentInformationCard("نور الهدى مهند كاظم", "المرحلة الرابعة - قسم علوم الحاسبات"),

                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
