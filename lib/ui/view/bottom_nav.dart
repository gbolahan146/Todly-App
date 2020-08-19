
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todly/core/responsiveness.dart';
import 'package:todly/ui/view/create/create.dart';
import 'package:todly/ui/view/homepage/home.dart';
import 'package:todly/ui/view/lists/lists.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  void _onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void _bottomTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          // physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: <Widget>[
            HomeScreen(),
            ListScreen(),
            CreateScreen(),
             Container(child: Center(child: Text('Reminder'))),
            Container(child: Center(child: Text('Settings'))),
          ],
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: CupertinoTabBar(
              onTap: _bottomTapped,
              currentIndex: _page,
              backgroundColor: Colors.white,
              items: <BottomNavigationBarItem>[
                _bottomNavigationBarItem(
                  "",
                  0,
                  Image.asset(
                    'assets/images/home.png',
                    height: McGyver.rsDoubleH(context, 3),
                    width: McGyver.rsDoubleW(context, 5),
                  ),
                  Image.asset(
                    'assets/images/home_active.png',
                    height: McGyver.rsDoubleH(context, 3),
                    width: McGyver.rsDoubleW(context, 5),
                  ),
                ),
                _bottomNavigationBarItem(
                  "Lists",
                  1,
                  Image.asset(
                    'assets/images/list.png',
                    height: McGyver.rsDoubleH(context, 3),
                    width: McGyver.rsDoubleW(context, 5),
                  ),
                  Image.asset(
                    'assets/images/list_active.png',
                    height: McGyver.rsDoubleH(context, 3),
                    width: McGyver.rsDoubleW(context, 5),
                  ),

                ),
                _bottomNavigationBarItem(
                  "Add",
                  2,
                  Image.asset(
                    'assets/images/float.png',
                    height: McGyver.rsDoubleH(context, 27),
                    width: McGyver.rsDoubleW(context, 27),
                  ),
                  Image.asset(
                    'assets/images/float.png',
                    height: McGyver.rsDoubleH(context, 47),
                    width: McGyver.rsDoubleW(context, 47),
                  ),
                ),
                _bottomNavigationBarItem(
                  "Calendar",
                  3,
                  Image.asset(
                    'assets/images/calendar.png',
                    height: McGyver.rsDoubleH(context, 3),
                    width: McGyver.rsDoubleW(context, 5),
                  ),
                  Icon(Icons.bubble_chart, color: Color(0xff130A38),)
                ),
                _bottomNavigationBarItem(
                  "Profile",
                  3,
                  Image.asset(
                    'assets/images/settings.png',
                    height: McGyver.rsDoubleH(context, 3),
                    width: McGyver.rsDoubleW(context, 5),
                  ),
                  Icon(
                    Icons.account_circle,
                    color: Color(0xff130A38),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      String label, int number, Widget icon, Widget activeIcon) {
    return BottomNavigationBarItem(
      activeIcon: activeIcon,
      //  backgroundColor: Colors.red,
      icon: icon,
      
    );
  }
}
