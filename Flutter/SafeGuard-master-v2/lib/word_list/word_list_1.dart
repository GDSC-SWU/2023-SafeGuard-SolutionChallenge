import 'package:flutter/material.dart';
import 'package:safeguard/app.dart';
import 'package:safeguard/word_list/words_main.dart';

import '../ai_main.dart';
import '../file_list/file_main.dart';

class TodoListPage extends StatelessWidget {
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
                  title: Text('AI 안전 시각화'),
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
                  title: Text('안전 관리 용어'),
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
            body: Word1Home(),
          ),
        ));
  }
}

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
                    '안전 관리 용어',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff233E59),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(150, 10, 0, 0),
                  child: Image.asset(
                    'assets/images/file_q.png',
                  ),
                ),
              ]))
        ]));
  }

  /*@override
  Widget build(BuildContext context) {
    return _createTodoList();
  }

   Widget _createTodoList() {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return _createTodoCard();
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          thickness: 8.0,
          height: 8.0,
          color: Colors.transparent,
        );
      },
    );
  }

  Widget _createTodoCard() {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Container(
          padding: EdgeInsets.all(16.0), 
          child: _createTodoItemRow()
      ),
    );
  }

  Widget _createTodoItemRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _createTodoItemContentWidget(),
        Icon(Icons.keyboard_arrow_right, color: Colors.blue)
      ],
    );
  }

  Widget _createTodoItemContentWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Todo Item Title",
            style: TextStyle(fontSize: 24.0, color: Colors.blue)),
        Divider(
          thickness: 8.0,
          height: 8.0,
          color: Colors.transparent,
        ),
        Text("2021.01.18",
            style: TextStyle(fontSize: 18.0, color: Colors.blueGrey))
      ],
    );
  }*/
}