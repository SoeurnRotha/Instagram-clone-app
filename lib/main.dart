import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Page/Account.dart';
import 'package:untitled1/Page/Add%20Story.dart';
import 'package:untitled1/Page/Favorite.dart';
import 'package:untitled1/Page/Home.dart';
import 'package:untitled1/Page/Search.dart';
void main(){
  runApp(InstargarmApp());
}
class InstargarmApp extends StatefulWidget {
  const InstargarmApp({Key? key}) : super(key: key);

  @override
  State<InstargarmApp> createState() => _InstargarmAppState();
}
int _currentIndex = 0;

class _InstargarmAppState extends State<InstargarmApp> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _buildBody,
        bottomNavigationBar: _buildBotton,
      ),
    );
  }

  get _buildBody => Container(
    alignment: Alignment.center,
    child:_buildPageView
  );
  get _buildPageView=> PageView(
    controller: _controller,
    onPageChanged: (index){
      setState(() {
        _currentIndex = index;
      });
    },
    children: [
      HomePage(),
      SearchPage(),
     Add_story(),
      Favorite(),
      Account()
    ],
  );
  get _buildBotton => BottomNavigationBar(
    selectedItemColor: Colors.black,
    currentIndex: _currentIndex,
    unselectedItemColor: Colors.black,
    onTap: (index){
      setState(() {
        _currentIndex = index;
      });
      _controller.animateToPage(_currentIndex, duration: Duration(milliseconds: 300), curve: Curves.easeOut);
    },
    items: [
      BottomNavigationBarItem(icon: ImageIcon(AssetImage("images/icon/home.png")),label: "Home"),
      BottomNavigationBarItem(icon: ImageIcon(AssetImage("images/icon/search.png")),label: "Search"),
      BottomNavigationBarItem(icon: ImageIcon(AssetImage("images/icon/more.png")),label: "Add Story"),
      BottomNavigationBarItem(icon: ImageIcon(AssetImage("images/icon/heart.png")),label: "Favorite"),
      BottomNavigationBarItem(icon: ImageIcon(AssetImage("images/icon/user.png")),label: "Account"),
    ],
  );
}
