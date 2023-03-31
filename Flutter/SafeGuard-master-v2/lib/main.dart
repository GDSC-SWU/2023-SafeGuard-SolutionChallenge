import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:safeguard/app.dart';
import 'package:safeguard/emergency.dart';

Future<void> main() async {
  // 비동기 메소드 사용시 추가(Firebase 초기화 함수가 비동기 방식임)
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase 초기화
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff233E59),
      ),
      home: App(),
    );
  }
}

