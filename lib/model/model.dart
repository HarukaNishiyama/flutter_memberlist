import 'package:flutter/cupertino.dart';

class MemberModel {
  // メンバー情報を入れる
  List members = [
    "aさん",
    "bさん",
    "cさん",
  ];

  addMember(String name) {
    members.add(name);
  }

}
