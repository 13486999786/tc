import 'package:flutter/material.dart';
import 'package:flutter_tc/pages/buy_page.dart';
import 'package:flutter_tc/pages/find_page.dart';
import 'package:flutter_tc/pages/mine_page.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> 
{
  final List<BottomNavigationBarItem>items = 
  [
    BottomNavigationBarItem(title: Text('发现'),icon: Icon(Icons.find_in_page)),
    BottomNavigationBarItem(title: Text('已购'),icon: Icon(Icons.shop)),
    BottomNavigationBarItem(title: Text('我的'),icon: Icon(Icons.people)),
  ];

  final List<Widget>pages = [
    FindPage(),
    BuyPage(),
    MinePage()
  ];

  PageController controller = PageController(initialPage: 0);
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar
      (
        onTap: (index){
          setState(() {
            currentIndex = index;
            controller.jumpToPage(index);
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: Color(0xff00E0BE),
        items: items,
      ),
       body: PageView
       (
         physics: NeverScrollableScrollPhysics(),
         controller:controller,
         children: pages
       ),
    );
  }
}