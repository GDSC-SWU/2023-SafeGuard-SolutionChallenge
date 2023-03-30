import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:google_sign_in/google_sign_in.dart';


class LoginPage extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    // 차후에 웹버전을 위한 flag
    var _mobile = false;
    var _isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    var _isAOS = Theme.of(context).platform == TargetPlatform.android;
    if(_isAOS || _isIOS) {
      _mobile = true;
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width:300,
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/loginpage_logo.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
              ),
// 구글 로그인
              SignInButton(
                buttonType: ButtonType.google,
                buttonSize: ButtonSize.large,
                onPressed: () {
                  _mobile // 모바일 함수와 웹 함수가 다름
                      ?_handleSignIn().then((user) {
                    print('Google(AOS): login');
                  })
                      : signInWithGoogleWeb().then((user) {
                    print('Google(Web): login');
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _handleSignIn() async {

    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final authResult = await _auth.signInWithCredential(credential);
    final user = authResult.user;
    print(user);

    return user;
  }

  Future signInWithGoogleWeb() async {
    // Create a new provider
    var googleProvider = GoogleAuthProvider();

    googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({
      'login_hint': 'user@example.com'
    });

    final authResult = await FirebaseAuth.instance.signInWithPopup(googleProvider);
    final user = authResult.user;

    return user;
  }
}