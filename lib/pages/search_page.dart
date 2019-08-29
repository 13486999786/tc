import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget 
{
  SearchPage({Key key}) : super(key: key);

  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize
      (
        preferredSize: Size.fromHeight(56),
        child: Container
        (
          padding: EdgeInsets.fromLTRB(12, 0, 12, 10),
          color: Colors.yellow,
          alignment: AlignmentDirectional.bottomCenter,
            child: Row
            (
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>
              [
                Container
                (
                  color: Colors.red,
                  height: 40,
                  width: MediaQuery.of(context).size.width - 24 - 60,
                ),
                Expanded
                (
                  child:   Container
                (
                  color: Colors.red,
                  child: Text('取消'),
                  alignment: AlignmentDirectional.center,
                )
                )
              ],
            ),
        ),
      ),
    );
  }
}