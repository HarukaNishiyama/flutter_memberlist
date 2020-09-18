import 'package:charts_flutter/new_member.dart';
import 'package:charts_flutter/view/menber_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryTextTheme: TextTheme(
            headline6: TextStyle(
                color: Colors.white
            )
        )
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              // 一番単純な画面遷移
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewMenberAdd()),
              );
            },
          ),
        ],
        title: Column(
          children: [
            Text("メンバーリスト"),
          ],
        ),
      ),
      body: MemberList(),
    );
  }
}
