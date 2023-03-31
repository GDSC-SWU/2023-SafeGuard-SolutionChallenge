import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:safeguard/app.dart';
import 'package:safeguard/word_list/word_list_2.dart';
import 'package:safeguard/word_list/word_model.dart';
import 'package:safeguard/word_list/words_main.dart';

import '../ai_main.dart';
import '../file_list/file_main.dart';

class WordListHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //배너 숨기기
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
              title:
              Image.asset('assets/images/bar_logo.png', fit: BoxFit.cover),
              leading: IconButton(
                icon: Image.asset(
                  'assets/images/vector.png',
                ),
                onPressed: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MainHome()))
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
                  leading: FlutterLogo(),
                ),
                Divider(
                  color: Color(0xff233E59),
                ),
                ListTile(
                  title: Text('AI Safety Protection'),
                  leading: FlutterLogo(),
                  onTap: () => {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => AiMain()))
                  },
                ),
                Divider(
                  color: Color(0xff233E59),
                ),
                ListTile(
                  title: Text('Safe Word'),
                  leading: Image.asset("assets/images/word_y.png"),
                  onTap: () => {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => WordsMain()))
                  },
                ),
                Divider(
                  color: Color(0xff233E59),
                ),
                ListTile(
                  title: Text('Document Box'),
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
                  title: Text('Emergency'),
                  leading: Icon(Icons.thumb_up),
                ),
              ]),
            ),
           body:Word1Home(),
        )));
  }
}

///////////////////////////////////////////////////////////////////////////////
class Word1Home extends StatelessWidget {
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
                    'Workplace Safety Rules',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff233E59),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                  child: Image.asset(
                    'assets/images/file_q.png',
                  ),
                ),
              ])),
          Container(
            margin: EdgeInsets.fromLTRB(7, 20, 0, 0),
            child: SizedBox(
              height: 60,
              width: 360,
              child: TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xff233E59),
                    padding: const EdgeInsets.all(10.0),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => (WordListHome1())));
                },
                child: const Text('Clean and tidy'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SizedBox(
              height: 60,
              width: 360,
              child: TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xff233E59),
                    padding: const EdgeInsets.all(10.0),
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => (Word1Explain())));
                },
                child: const Text('dust caution'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: SizedBox(
              height: 60,
              width: 360,
              child: TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xff233E59),
                    padding: const EdgeInsets.all(10.0),
                    textStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => (MainHome())));
                },
                child: const Text('Prohibition of leaving toxic substances'),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
              child: SizedBox(
                height: 60,
              width: 360,
                child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xff233E59),
                      padding: const EdgeInsets.all(10.0),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => (MainHome())));
                  },
                  child: const Text('Compliance with safety rules'),
                ),
              )),
          Container(
              margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
              child: SizedBox(
                height: 60,
              width: 360,
                child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xff233E59),
                      padding: const EdgeInsets.all(10.0),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => (MainHome())));
                  },
                  child: const Text('no smoking'),
                ),
              )),

              Container(
              margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
              child: SizedBox(
               height: 60,
              width: 360,
                child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xff233E59),
                      padding: const EdgeInsets.all(10.0),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => (MainHome())));
                  },
                  child: const Text('bundled up'),
                ),
              )),
              Container(
              margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
              child: SizedBox(
               height: 60,
              width: 360,
                child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xff233E59),
                      padding: const EdgeInsets.all(10.0),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => (MainHome())));
                  },
                  child: const Text('bundled up'),
                ),
              ))
        ]));
  }
}


