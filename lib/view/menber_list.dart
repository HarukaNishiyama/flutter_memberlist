import 'package:charts_flutter/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemberList extends StatelessWidget {
  // メンバー情報をモデルから持ってくる
  List member = MemberModel().members;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: member.length,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            child: Text(
              member[index],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(20),
          ),
        );
      },
    );
  }

}