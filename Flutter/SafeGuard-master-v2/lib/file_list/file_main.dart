import 'dart:io';

import 'package:flutter/material.dart';
import 'package:safeguard/ai_main.dart';
import 'package:safeguard/file_list/file_main.dart';
import 'package:safeguard/file_list/file_one.dart';
import 'package:safeguard/file_list/file_three.dart';
import 'package:safeguard/file_list/file_two.dart';
import 'package:safeguard/main.dart';
import 'package:safeguard/mypage.dart';
import 'package:safeguard/word_list/words_main.dart';

class FileMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff233E59),
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff233E59),
            elevation: 0,
            centerTitle: true,
            title: Image.asset('assets/images/bar_logo.png', fit: BoxFit.cover),
            leading: IconButton(
              icon: Image.asset(
                'assets/images/vector.png',
              ),
              onPressed: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MyApp()))
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
                  backgroundImage: AssetImage('assets/images/img_profile.png'),
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
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyApp()))
                },
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
          body: FileHome(),
        ),
      ),
    );
  }
}

class FileHome extends StatelessWidget {
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
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Image.asset(
                'assets/images/document.png',
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 0, 5),
              child: Image.asset(
                'assets/images/file_q.png',
              ),
            ),
          ])),
      Container(
          margin: EdgeInsets.fromLTRB(10, 130, 0, 0),
          child: InkWell(
            child: Image.asset(
              'assets/images/bt_file1.png',
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => (FileOne())));
            },
          )),
      Container(
          margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
          child: InkWell(
            child: Image.asset(
              'assets/images/bt_file2.png',
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => (FileOne())));
            },
          )),
      Container(
          margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
          child: InkWell(
            child: Image.asset(
              'assets/images/bt_file3.png',
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => (FileOne())));
            },
          ))
    ]));
  }
}
