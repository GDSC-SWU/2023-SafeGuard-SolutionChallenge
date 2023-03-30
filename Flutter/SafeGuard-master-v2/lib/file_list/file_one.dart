import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:safeguard/ai_main.dart';
import 'package:safeguard/file_list/file_main.dart';
import 'package:safeguard/main.dart';
import 'package:safeguard/mypage.dart';
import 'package:safeguard/word_list/words_main.dart';

final imageList = [
  Image.asset('assets/images/file1_uzb_1.png', fit: BoxFit.cover),
  Image.asset('assets/images/file1_uzb_2.png', fit: BoxFit.cover),
  //Image.asset('assets/images/image3.png', fit: BoxFit.cover),
];

class FileOne extends StatelessWidget {
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
            body: FileOneHome(),
          )),
    );
  }
}

class FileOneHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
      ],
    );
  }
}

Widget _buildTop() {
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
            child: Image.asset(
              'assets/images/file1.png',
            ),
          ),
        ])),
  ]));
}

Widget _buildMiddle() {
  return Padding(
      padding: const EdgeInsets.only(
          bottom: 0, left: 0, top: 30, right: 0), // 이 부분에서 padding 값 지정

      child: CarouselSlider(
        options: CarouselOptions(height: 450.0, autoPlay: false),
        items: imageList.map((image) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: image,
                ),
              );
            },
          );
        }).toList(),
      ));
}
