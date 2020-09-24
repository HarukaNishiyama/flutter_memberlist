import 'package:charts_flutter/input_member_name.dart';
import 'package:flutter/material.dart';

class MemberSkills extends StatefulWidget {
  @override
  _MemberSkillsState createState() => _MemberSkillsState();
}

class _MemberSkillsState extends State<MemberSkills> {
  List memberList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text("特技"),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: memberList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(memberList[index]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newMenberName = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return MemberAddPage();
            }),
          );
          if (newMenberName != null) {
            setState(() {
              memberList.add(newMenberName);
            });
          }
        },
        child: Icon(Icons.add),
        // backgroundColor: Colors,
      ),
    );
  }
}
