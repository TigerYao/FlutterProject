import 'package:flutter/material.dart';
import 'package:htonline/dao/advertiseDao.dart';
import 'package:htonline/model/catory_listentity_entity.dart';
import 'package:htonline/model/course_info_entity.dart';
import 'package:htonline/page_route_utils.dart';
import 'package:htonline/pages/common/course_content_page.dart';
import 'package:htonline/pages/common/search_page.dart';

class CourseMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CourseMainState();
  }
}

class _CourseMainState extends State<CourseMain>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  TabController mTabController;
  PageController mPageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _handleCategory();
    print("initState");
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Image.asset(
              "images/home_title_right.png",
              width: 30,
              height: 30,
            ),
            onPressed: () {}),
        title: titleWidget(),
      ),
      body: bodyWidget(),
    );
  }

  Widget titleWidget() {
    return GestureDetector(
        onTap: () {
          // 调用自定义的路由方法
          Navigator.of(context).push(CustomPageRoute(SearchPage()));
        },
        child: Container(
          decoration: new BoxDecoration(
              border: new Border.all(color: Color(0xFFfafafa), width: 0.5),
              color: Colors.grey[200],
              borderRadius: new BorderRadius.circular((20.0))),
          height: 35.0,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  onPressed: () {}),
              Text(
                '搜索',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              )
            ],
          ),
        ));
  }

  List<Widget> tablesView = List();

  Widget bodyWidget() {
    return tablesView == null || tablesView.isEmpty
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            child: Column(
              children: tablesView,
            ),
          );
  }

  Widget createTitleBars(CourseInfoEntity courseInfoEntity) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(bottom: 5, top: 5),
      height: 40,
      child: TabBar(
          isScrollable: true,
          controller: mTabController,
          labelColor: Colors.red,
          unselectedLabelColor: Color(0xff666666),
          labelStyle: TextStyle(fontSize: 16.0),
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: courseInfoEntity.data.map((item) {
            return Tab(
              text: item.name,
            );
          }).toList()),
    );
  }

  CourseContentListPage contentPage;
  List<Widget> childrenList = List();

  Widget creatPageView() {
    return Expanded(
        child: PageView.builder(
      controller: mPageController,
      itemCount: courseInfoEntity.data.length,
      onPageChanged: (int index) {
        if (isPageCanChanged) pageChanged(index);
      },
      itemBuilder: (BuildContext context, int index) {
        CourseInfoData infoData = courseInfoEntity.data[index];
        if (childrenList.length == 0 || index >= childrenList.length)
          childrenList.add(CourseContentListPage(infoData.cateId.toString()));
        return childrenList[index];
      },
    ));
  }

  CourseInfoEntity courseInfoEntity;

  void _handleCategory() {
    AdvertiseDao.fetchHomeCourseCategroy(success: (datas) {
      courseInfoEntity = datas;
      mTabController =
          TabController(length: courseInfoEntity.data.length, vsync: this);
      mTabController.addListener(() {
        //TabBar的监听
        if (mTabController.indexIsChanging) {
          //判断TabBar是否切换
          print(mTabController.index);
//          creatPageView();
          pageChanged(mTabController.index, p: mPageController);
        }
      });
      tablesView.add(createTitleBars(courseInfoEntity));
      tablesView.add(creatPageView());
      setState(() {});
    });
  }

  bool isPageCanChanged = true;

  pageChanged(int index, {PageController p, TabController t}) async {
    if (p != null) {
      //判断是哪一个切换
      isPageCanChanged = false;
      await mPageController.animateToPage(index,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease); //等待pageview切换完毕,再释放pageivew监听
      isPageCanChanged = true;
    } else {
      mTabController.animateTo(index); //切换Tabbar
    }
  }
}
