import 'package:flutter/material.dart';
import 'package:flutter_tc/pages/index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget 
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) 
  {
    print('启动');
    return MaterialApp(
      title: '天成时KE',
      theme: ThemeData
      (
        scaffoldBackgroundColor: Color(0xffF2F2F2),
      ),
      home: IndexPage()
    );
  }
}

