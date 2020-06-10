import 'package:flutter/material.dart';
import 'package:htonline/dao/advertiseDao.dart';
import 'package:htonline/model/arenaConstant.dart';
import 'package:htonline/model/catory_listentity_entity.dart';
import 'package:htonline/model/essay_course_entity.dart';
import 'package:htonline/model/essay_question_entity.dart';
import 'package:htonline/model/question_type_entity.dart';
import 'package:htonline/model/user_info.dart';
import 'package:htonline/pages/home/essay_course_list_page.dart';

class EssayCoursePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EssayCoursePageState();
  }
}

class _EssayCoursePageState extends State<EssayCoursePage>
    with AutomaticKeepAliveClientMixin, SingleTickerProviderStateMixin {
  Widget _tabBarView;
  TabController _tabController;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _handlerData();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return Scaffold(
      body:createBody()
    );
  }
  List<Widget> _tabViews =  List();
  QuestionTypeEntity questionTypeEntity;
  _handlerData() {
    UserInfoUtil.subject = ArenaConstant.ESSAY_TESTS_FOR_CIVIL_SERVANTS;
    AdvertiseDao.fetchQuestionTypes(success: (entity) {
       questionTypeEntity = entity;
      _tabController =
          TabController(length: questionTypeEntity.data.length, vsync: this);
      _tabController.addListener(() {
        if (_tabController.indexIsChanging) {
          pageChanged(_tabController.index, p: _pageController);
        }
      });
      _tabBarView = TabBar(
        controller: _tabController,
        tabs: questionTypeEntity.data.map((data) {
          return Tab(text:data.name);
        }).toList(),
        labelColor: Colors.black87,
        labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        labelPadding: EdgeInsets.only(left: 0, right: 0),
      );
      setState(() {});
    });
  }

  bool isPageCanChanged = true;

  pageChanged(int index, {PageController p, TabController t}) async {
    if (p != null) {
      //判断是哪一个切换
      isPageCanChanged = false;
      await _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease); //等待pageview切换完毕,再释放pageivew监听
      isPageCanChanged = true;
    } else {
      _tabController.animateTo(index); //切换Tabbar
    }
  }

  Widget createBody() {
    return NestedScrollView(
      physics: BouncingScrollPhysics(),
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          margin:
                          EdgeInsets.only(left: 20, right: 20, top: 10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        Center(
                          child: Text('tab$index'),
                        )
                      ],
                    );
                  }),
            ),
          ),
          SliverAppBar(
            backgroundColor: Colors.grey[200],
            title: Container(
              height: 50,
              child: Center(
                child: Text(
                  '标准答案',
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
              ),
            ),
          ),
          SliverAppBar(
            expandedHeight: 30,
            pinned: true,
            title: Container(
              color: Colors.white,
              padding: EdgeInsets.only(bottom: 5, top: 5),
              height: 40,
              child: _tabBarView == null
                  ? Center(
                child: CircularProgressIndicator(),
              )
                  : _tabBarView,
            )
          )
        ];
      },
      body: Column(
        mainAxisSize: MainAxisSize.max,
//      shrinkWrap: true,
        children: <Widget>[
//          Container(
//            height: 40,
//            padding: EdgeInsets.all(10),
//            alignment: Alignment.center,
//            child: Text(
//              '标准答案',
//              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//            ),
//          ),

          Expanded(
            child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  if (isPageCanChanged) {
                    pageChanged(index);
                  }
                },
                itemCount: _tabController == null ? 1 : _tabController.length,
                itemBuilder: (BuildContext context, int index) {
                  bool newChild = _tabViews == null ||
                      _tabViews.length <= index;
                  if (newChild && _tabController != null) {
                    int type = questionTypeEntity.data[index].id;
                    AdvertiseDao.fetchQuestionList(type, 1, success: (data) {
                      EssayQuestionData essayData = data;
                      Widget widget = ListView.builder(
                          itemCount: essayData.result.length,
                          itemBuilder: (BuildContext context, int index) {
                            EssayQuestionDataResult reslut = essayData
                                .result[index];
                            return ListTile(title: Text(reslut.showMsg),);
                          });
                      _tabViews.add(widget);
                      setState(() {

                      });
                    });
                  }
                  Widget childView = newChild ? Center(
                    child: CircularProgressIndicator(),) : _tabViews[index];
                  return childView;
                }),
          )
        ],
      ),
    );
  }
}
