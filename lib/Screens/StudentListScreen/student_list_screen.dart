import 'package:dna_full_project/MyWidgets/my_widgets.dart';
import 'package:flutter/material.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({Key? key}) : super(key: key);

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
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
                  Icons.search,
                  color: Colors.black,
                  size: 28,
                ),),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ListView(
                    children: [
                      _widgets.buildStudentInformationCard("نور الهدى مهند كاظم", "المرحلة الرابعة - قسم علوم الحاسبات"),
                      _widgets.buildStudentInformationCard("نور الهدى مهند كاظم", "المرحلة الرابعة - قسم علوم الحاسبات"),
                      _widgets.buildStudentInformationCard("نور الهدى مهند كاظم", "المرحلة الرابعة - قسم علوم الحاسبات"),
                      _widgets.buildStudentInformationCard("نور الهدى مهند كاظم", "المرحلة الرابعة - قسم علوم الحاسبات"),
                      _widgets.buildStudentInformationCard("نور الهدى مهند كاظم", "المرحلة الرابعة - قسم علوم الحاسبات"),
                      _widgets.buildStudentInformationCard("نور الهدى مهند كاظم", "المرحلة الرابعة - قسم علوم الحاسبات"),
                      _widgets.buildStudentInformationCard("نور الهدى مهند كاظم", "المرحلة الرابعة - قسم علوم الحاسبات"),
                      _widgets.buildStudentInformationCard("نور الهدى مهند كاظم", "المرحلة الرابعة - قسم علوم الحاسبات"),
                      _widgets.buildStudentInformationCard("نور الهدى مهند كاظم", "المرحلة الرابعة - قسم علوم الحاسبات"),
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
