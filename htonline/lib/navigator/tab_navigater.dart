import 'package:flutter/material.dart';
import 'package:htonline/model/user_info.dart';
import 'package:htonline/page_route_utils.dart';
import 'package:htonline/pages/course/course_main.dart';
import 'package:htonline/pages/home/home_main.dart';
import 'package:htonline/pages/login/login_page.dart';
import 'package:htonline/pages/study/study_course_page.dart';
import 'package:htonline/utils/sputils.dart';

class TabNavigator extends StatefulWidget {
  @override
  State createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  int _currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);
  final HomeMainPage homeMainPage = HomeMainPage();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SPUtils.getInstance().init();
  }

  @override
  Widget build(BuildContext context) {
    UserInfoUtil.getPix(context);
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[homeMainPage, CourseMain(), StudyCoursePage(), Text("4")],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            if(index >= 2 && SPUtils.getInstance().getUserInfo() == null){
              Navigator.of(context).push(CustomPageRoute(LoginPage()));
              return;
            }
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: getBottomTabBars()),
    );
  }

  List<BottomNavigationBarItem> getBottomTabBars() {
    List itemNames = ["题库", "课程", "学习", "我的"];
    final _defaultColor = Colors.black26;
    final _activeColor = Colors.red;
    List<BottomNavigationBarItem> items = new List();
    for (int i = 1; i < 5; i++) {
      BottomNavigationBarItem widget = BottomNavigationBarItem(
          icon: Image.asset(
            "images/tab_${i}_normal.png",
            width: 25,
            height: 25,
          ),
          activeIcon: Image.asset("images/tab_${i}_selected.png",
              width: 25, height: 25),
          title: Text(
            itemNames[i - 1],
            style: TextStyle(
                fontSize: 12,
                color: _currentIndex != (i - 1) ? _defaultColor : _activeColor),
          ));
      items.add(widget);
    }
    return items;
  }
}
