import 'package:flutter/material.dart';
import 'package:safeguard/word_list/words_main.dart';
import 'package:safeguard/app.dart';
import '../ai_main.dart';
import '../file_list/file_main.dart';


class WordListHome1 extends StatelessWidget {
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
           body:const Word1Explain(),
        )));
  }
}

///////////////////////////////////////////////////////////////////////////////
class Word1Explain extends StatelessWidget {
  const Word1Explain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.fromLTRB(30, 70, 0, 0),
          child: Row(children: [
            Image.asset(
              'assets/images/dot.png',
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: const Text(
                'Workplace Safety Rules',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Image.asset(
                'assets/images/file_q.png',
              ),
            ),
          ])),
      Container(
        margin: const EdgeInsets.fromLTRB(15, 70, 15, 0),
        child: Column(children: <Widget>[
          Image.asset('assets/images/explain2.png')
        ]
        ),
      ),
    ]);
  }
}
         