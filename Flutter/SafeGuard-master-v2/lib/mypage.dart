import 'package:flutter/material.dart';
import 'package:safeguard/main.dart';

class MypageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()))
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/images/siren_mini.png',
            ),
            onPressed: () => {print('siren')},
          ),
        ],
      ),
      body: Mypage_profile(),
    );
  }
}

class Mypage_profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[_buildTop()],
    );
  }
}

Widget _buildTop() {
  return Container(
      child: Container(
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
                'assets/images/mypage_txt.png',
              ),
            ),
          ])),
      Container(
        child: Row(children: [
          Container(
            child: Column(children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 40, 0, 0),
                child: Row(
                  children: [
                    const Text(
                      'Dangeuni',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff233E59),
                      ),
                    ),
                    // const Text(
                    //   ' 님,',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.w700,
                    //     color: Color(0xff233E59),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: const Text(
                  'Did you have a safe day?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff233E59),
                  ),
                ),
              )
            ]),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(30, 40, 0, 0),
              child: Image.asset('assets/images/img_profile.png')),
        ]),
      ),
      Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Image.asset('assets/images/line.png')),
      Container(
          child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
            child: const Text(
              'Name',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff233E59),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(80, 10, 0, 0),
            child: const Text(
              'Dangeuni',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000),
              ),
            ),
          )
        ],
      )),
      Container(
          child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
            child: const Text(
              'ID',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff233E59),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(100, 10, 0, 0),
            child: const Text(
              'dangeuni00',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000),
              ),
            ),
          )
        ],
      )),
      Container(
          child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
            child: const Text(
              'Language',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff233E59),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(60, 10, 0, 0),
            child: const Text(
              'English',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color(0xff000000),
              ),
            ),
          )
        ],
      )),
      Container(
        margin: EdgeInsets.fromLTRB(200, 15, 0, 0),
        child: InkWell(
          child: Image.asset(
            'assets/images/btn_language.png',
          ),
          onTap: () => (print('change')),
        ),
      ),
    ]),
  ));
}

Widget _buildMiddle() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 0, left: 20, top: 30, right: 20),
    child: DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 50),
            child: TabBar(tabs: [
              Tab(text: "Home"),
              Tab(text: "Articles"),
              Tab(text: "User"),
            ]),
          ),
          Expanded(
            child: Container(
              child: TabBarView(children: [
                Container(
                  child: Text("Home Body"),
                ),
                Container(
                  child: Text("Articles Body"),
                ),
                Container(
                  child: Text("User Body"),
                ),
              ]),
            ),
          )
        ],
      ),
    ),
  );
}

Widget build(BuildContext context) {
  return DefaultTabController(
    child: Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.access_alarm),
              text: 'tab1',
            ),
            Tab(
              icon: Icon(Icons.account_circle),
              text: 'tab2',
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Icon(Icons.access_alarm),
          Center(child: Text('tab2'))
        ],
      ),
    ),
    length: 2,
  );
}
