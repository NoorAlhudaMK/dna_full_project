import 'package:flutter/material.dart';

class LoadData extends StatefulWidget {
  const LoadData({Key? key}) : super(key: key);

  @override
  State<LoadData> createState() => _LoadDataState();
}

class _LoadDataState extends State<LoadData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(bottom: 30, top: MediaQuery.of(context).size.height * 0.28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Image.asset("assets/logo.png", width: 300, height: 300,)
            ),
            Padding(padding: EdgeInsets.only(top: 5, bottom: 40,), child:  Text("تحميل البيانات", style: TextStyle(
                fontSize: 26,
                color: Colors.grey.shade700
            ),),),
            CircularProgressIndicator(),
            Padding(padding: EdgeInsets.only(top: 120,), child: Text("WWW.X3S.10", style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700
            ),),),
          ],
        ),
      ),
    );
  }
}
