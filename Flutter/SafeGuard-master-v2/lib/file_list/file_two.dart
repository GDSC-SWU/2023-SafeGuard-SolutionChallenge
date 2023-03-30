import 'dart:io';

import 'package:flutter/material.dart';
import 'package:safeguard/ai_main.dart';
import 'package:safeguard/file_list/file_main.dart';
import 'package:safeguard/main.dart';
import 'package:safeguard/mypage.dart';
import 'package:safeguard/word_list/words_main.dart';

class FileTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff233E59),
              elevation: 0,
              centerTitle: true,
              title:
                  Image.asset('assets/images/bar_logo.png', fit: BoxFit.cover),
              leading: IconButton(
                icon: Image.asset(
                  'assets/images/vector.png',
                ),
                onPressed: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => FileMain()))
                },
              ),
              actions: [
                IconButton(
                  icon: Image.asset(
                    'assets/images/mypage.png',
                  ),
                  onPressed: () => print('mypage'),
                ),
              ],
            ),
            drawer: Drawer(
              child: ListView(padding: EdgeInsets.zero, children: <Widget>[
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/img_profile.png'),
                  ),
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/mypage.png'),
                    )
                  ],
                  accountEmail: Text('dangeuni'),
                  accountName: Text('Dangeuni'),
                  //onDetailsPressed: () {
                  //  print('press details');
                  //},
                  decoration: BoxDecoration(
                      color: Color(0xff233E59),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                ),
                ListTile(
                  title: Text('HomePage'),
                  leading: Image.asset("assets/images/home_n.png"),
                ),
                Divider(
                  color: Color(0xff233E59),
                ),
                ListTile(
                  title: Text('AI 안전 시각화'),
                  leading: Image.asset("assets/images/ai_n.png"),
                  onTap: () => {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => AiMain()))
                  },
                ),
                Divider(
                  color: Color(0xff233E59),
                ),
                ListTile(
                  title: Text('안전 관리 용어'),
                  leading: Image.asset("assets/images/word_n.png"),
                  onTap: () => {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => WordsMain()))
                  },
                ),
                Divider(
                  color: Color(0xff233E59),
                ),
                ListTile(
                  title: Text('필요 서류함'),
                  leading: Image.asset("assets/images/folder_y.png"),
                  onTap: () => {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => FileMain()))
                  },
                ),
                Divider(
                  color: Color(0xff233E59),
                ),
                ListTile(
                  title: Text('긴급 신고'),
                  leading: Image.asset("assets/images/siren_n.png"),
                ),
              ]),
            ),
            body: FileTwoHome(),
          )),
    );
  }
}

class FileTwoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
          child: Row(children: [
            Container(
              child: Image.asset(
                'assets/images/dot.png',
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: const Text(
                '표준근로계약서',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff233E59),
                ),
              ),
            ),
          ])),
    ]));
  }
}
