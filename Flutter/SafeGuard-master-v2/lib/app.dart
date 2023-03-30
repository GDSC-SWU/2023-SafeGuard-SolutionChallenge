import 'package:flutter/material.dart';
import 'package:safeguard/ai_main.dart';
import 'package:safeguard/file_list/file_main.dart';
import 'package:safeguard/loading.dart';
import 'package:safeguard/mypage.dart';
import 'package:safeguard/word_list/words_main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:safeguard/login.dart';

import 'package:geolocator/geolocator.dart';
import 'dart:convert';
import 'package:weather/weather.dart';

class App extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (snapshot.hasData) {
              return MainHome();
            }
            return LoginPage();
          }
        });
  }
}

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final _openweatherkey = '7dfc76e1d8e11398bde6fa323024b00b';

  @override
  void initState() {
    super.initState();
    requestPermission();
    getLocation();
  }

  void getLocation() async {
    // 현재 위치 가져오기
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  }

  void requestPermission() async {
    //권한 요청하기
    LocationPermission permission = await Geolocator.requestPermission();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff233E59),
        elevation: 0,
        centerTitle: true,
        title: Image.asset('assets/images/bar_logo.png', fit: BoxFit.cover),
        // leading: IconButton(
        //   icon: Image.asset(
        //     'assets/images/mypage.png',
        //   ),
        //   onPressed: () => {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (_) => MypageMain()))
        //   },
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () => print('Tutorial'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Container(
              child: InkWell(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/account_n.png'),
                  backgroundColor: Colors.white,
                ),
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MypageMain()))
                },
              ),
            ),

            // otherAccountsPictures: [
            //   CircleAvatar(
            //     backgroundImage: AssetImage('assets/images/mypage.png'),
            //   )
            // ],
            accountEmail: Text('dangeuni'),
            accountName: Text('Dangeuni'),
            // onDetailsPressed: () {
            //   print('press details');
            // },
            decoration: BoxDecoration(
                color: Color(0xff233E59),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
          ),
          ListTile(
            title: Text('HomePage'),
            leading: Image.asset("assets/images/home_y.png"),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MainHome()))
            },
          ),
          Divider(
            color: Color(0xff233E59),
          ),
          ListTile(
            title: Text('AI Safety Protection'),
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
            title: Text('Safe Word'),
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
            title: Text('Document Box'),
            leading: Image.asset("assets/images/folder_n.png"),
          ),
          Divider(
            color: Color(0xff233E59),
          ),
          ListTile(
            title: Text('Emergency'),
            leading: Image.asset("assets/images/siren_n.png"),
          ),
        ]),
      ),
      body: MainButton(),
    );
  }
}

class MainButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 35, 0, 30),
      child: Column(
        children: <Widget>[
          Column(children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 25, 40),
              child: InkWell(
                child: Image.asset('assets/images/weather.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 00, 50, 10),
              child: InkWell(
                child: Image.asset(
                  'assets/images/ai_eng.png',
                ),
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AiMain()))
                },
              ),
            ),
          ]),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Row(children: [
              InkWell(
                child: Image.asset(
                  'assets/images/word_eng.png',
                ),
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => WordsMain()))
                },
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 9, 0, 10),
                child: InkWell(
                  child: Image.asset(
                    'assets/images/file_eng.png',
                  ),
                  onTap: () => {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => FileMain()))
                  },
                ),
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 0, 20),
            child: Row(children: [
              InkWell(
                child: Image.asset(
                  'assets/images/119_eng.png',
                ),
                onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Loading()))
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
