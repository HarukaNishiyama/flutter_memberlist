import 'package:flutter/material.dart';

class MemberAddPage extends StatefulWidget {
  @override
  _MemberAddPageState createState() => _MemberAddPageState();
}

class _MemberAddPageState extends State<MemberAddPage> {
  String _memberName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('メンバー追加'),
      ),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _memberName,
              style: TextStyle(color: Colors.blue),
            ),
            TextField(
              onChanged: (String value) {
                setState(() {
                  _memberName = value;
                });
              },
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.amber,
                onPressed: () {
                  Navigator.of(context).pop(_memberName);
                },
                child: Text(
                  'リスト追加',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('キャンセル'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
