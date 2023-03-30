import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safeguard/ai_main.dart';
import 'package:safeguard/file_list/file_main.dart';
import 'package:safeguard/main.dart';
import 'package:safeguard/mypage.dart';
import 'package:safeguard/word_list/words_main.dart';

class AiMain extends StatelessWidget {
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
                    backgroundImage:
                        AssetImage('assets/images/img_profile.png'),
                  ),
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
                  leading: FlutterLogo(),
                ),
                Divider(
                  color: Color(0xff233E59),
                ),
                ListTile(
                  title: Text('AI 안전 시각화'),
                  leading: Image.asset("assets/images/ai_y.png"),
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
                  leading: Icon(Icons.thumb_up),
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
                  leading: Icon(Icons.thumb_up),
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
                  leading: Icon(Icons.thumb_up),
                ),
              ]),
            ),
            body: AiHome(),
          )),
    );
  }
}

class AiHome extends StatefulWidget {
  @override
  _AiHome createState() => _AiHome();
}

class _AiHome extends State {
  String url = 'assets/images/test.png';

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
              child: Image.asset(
                'assets/images/ai_txt.png',
              ),
            ),
          ])),
      Container(
        margin: EdgeInsets.fromLTRB(50, 30, 0, 0),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: InkWell(
                  child: Image.asset(
                    'assets/images/fire_danger_eng.png',
                  ),
                  onTap: () => {_fire()},
                )),
            Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: InkWell(
                  child: Image.asset(
                    'assets/images/fall_danger_eng.png',
                  ),
                  onTap: () => {_fall()},
                )),
            Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: InkWell(
                  child: Image.asset(
                    'assets/images/electric_danger_eng.png',
                  ),
                  onTap: () => {_electric()},
                )),
          ],
        ),
      ),
      Container(
        child: Row(children: [
          // fire 밑에 있는 삼각형
          Container(
              margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
              child: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(75, 0, 0, 0),
                                        child: Image.asset(
                                          'assets/images/fire.png',
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(15, 0, 0, 0),
                                        child: Image.asset(
                                          'assets/images/checklist.png',
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: Image.asset(
                                          'assets/images/fire_check1.png',
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: Image.asset(
                                          'assets/images/fire_check2.png',
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: Image.asset(
                                          'assets/images/fire_check3.png',
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            insetPadding:
                                const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            actions: [
                              TextButton(
                                child: const Text('Check!'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  },
                  icon: Icon(Icons.arrow_drop_down))),
          Container(
              margin: EdgeInsets.fromLTRB(65, 0, 0, 0),
              child: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(70, 0, 0, 0),
                                        child: Image.asset(
                                          'assets/images/fall.png',
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(15, 0, 0, 0),
                                        child: Image.asset(
                                          'assets/images/checklist.png',
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: Image.asset(
                                          'assets/images/fall_check1.png',
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: Image.asset(
                                          'assets/images/fall_check2.png',
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: Image.asset(
                                          'assets/images/fall_check3.png',
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            insetPadding:
                                const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            actions: [
                              TextButton(
                                child: const Text('Check!'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  },
                  icon: Icon(Icons.arrow_drop_down))),
          Container(
              margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
              child: IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(75, 0, 0, 0),
                                        child: Image.asset(
                                          'assets/images/electronic.png',
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(15, 0, 0, 0),
                                        child: Image.asset(
                                          'assets/images/checklist.png',
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: Image.asset(
                                          'assets/images/electric_check1.png',
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: Image.asset(
                                          'assets/images/electric_check2.png',
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: Image.asset(
                                          'assets/images/electric_check3.png',
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            insetPadding:
                                const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            actions: [
                              TextButton(
                                child: const Text('Check!'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  },
                  icon: Icon(Icons.arrow_drop_down))),
        ]),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Image.asset(url),
      )
    ]));
  }

  void _fall() {
    setState(() {
      url = 'assets/images/test_fall.png';
    });
  }

  void _fire() {
    setState(() {
      url = 'assets/images/test_fire.png';
    });
  }

  void _electric() {
    setState(() {
      url = 'assets/images/test_electric.png';
    });
  }
}

Widget Tips_fire() {
  return Container(
      child: Row(
    children: [
      Container(
        child: Image.asset(
          'assets/images/fire.png',
        ),
      ),
      Container(
        child: Image.asset(
          'assets/images/checklist.png',
        ),
      )
    ],
  ));
}
