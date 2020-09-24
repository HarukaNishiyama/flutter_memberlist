import 'package:charts_flutter/member_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.amber,
          primaryTextTheme:
              TextTheme(headline6: TextStyle(color: Colors.white))),
      // メンバーリストへ
      home: MemberList(),
    );
  }
}
