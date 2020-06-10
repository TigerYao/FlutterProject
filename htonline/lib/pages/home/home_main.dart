import 'package:flutter/material.dart';

import 'package:htonline/model/advertise.dart';
import 'package:htonline/model/home_doc_entity.dart';
import 'package:htonline/model/home_exisers_entity.dart';
import 'package:htonline/model/homeicon.dart';
import 'package:htonline/pages/home/home_one_page.dart';
import 'package:htonline/pages/home/home_second_page.dart';

class HomeMainPage extends StatefulWidget {
  @override
  State createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  List<AdvertiseConfig> items = [];
  List<HomeIconBean> homeIconsList = new List();
  HomeDocData homeDocData;
  HomeExisersEntity homeExi;
  TabController _tabController;
  PageController _pageController = new PageController();

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if(_tabController.indexIsChanging){
        pageChanged(_tabController.index, p: _pageController);
      }
    });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
            icon: Image.asset(
              "images/home_title_right.png",
              width: 25,
              height: 25,
            ),
            onPressed: () {}),
        title: Container(
            height: 50,
            alignment: Alignment.center,
            child: Container(
              width: 120,
              child: TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.transparent,
                  labelPadding: EdgeInsets.only(left: 2, right: 2),
                  indicatorWeight: 0.2,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 40,
                      child: Text(
                        "行测",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 40,
                      child: Text(
                        '申论',
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ]),
            )),
        actions: <Widget>[
          IconButton(
              icon: Image.asset(
                'images/article_icon_search.png',
                width: 25,
                height: 25,
              ),
              onPressed: () {})
        ],
      ),
      body:PageView(
          controller: _pageController,
          children: <Widget>[
            HomeOnePage(),
//            HomeOnePage(),
            EssayCoursePage()
          ],
          onPageChanged: (int index){
            if (isPageCanChanged) pageChanged(index);
          },
      )
    );
  }

  bool isPageCanChanged = true;

  pageChanged(int index,{PageController p}) async {
    if (p != null) {
      //判断是哪一个切换
      isPageCanChanged = false;
      await p.animateToPage(index,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease); //等待pageview切换完毕,再释放pageivew监听
      isPageCanChanged = true;
    } else {
      _tabController.animateTo(index); //切换Tabbar
    }
  }


}
