import 'package:charts_flutter/member_skills.dart';
import 'package:flutter/material.dart';

import 'input_member_name.dart';

class MemberList extends StatefulWidget {
  @override
  _MemberListState createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
  List menberList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text("メンバーリスト"),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: menberList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(menberList[index]),
              onTap: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return MemberSkills();
                  }),
                )
              },
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
              menberList.add(newMenberName);
            });
          }
        },
        child: Icon(Icons.add),
        // backgroundColor: Colors,
      ),
    );
  }
}
