import 'package:flutter/material.dart';
import 'package:flutter_web_view/screen/home_screent.dart';

void main() {
  //플러터 프레임워크가 앱을 실행할 준비가 될때까지
  //기다림
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
