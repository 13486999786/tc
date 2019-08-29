import 'package:flutter/material.dart';

class BuyPage extends StatefulWidget 
{
  BuyPage({Key key}) : super(key: key);

  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
       body: Center(child: Text('已购')),
    );
  }
}