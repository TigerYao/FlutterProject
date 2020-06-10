import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:htonline/dao/advertiseDao.dart';
import 'package:htonline/model/advertise.dart';
import 'package:htonline/model/arenaConstant.dart';
import 'package:htonline/model/home_doc_entity.dart';
import 'package:htonline/model/home_exisers_entity.dart';
import 'package:htonline/model/homeicon.dart';
import 'package:htonline/model/user_info.dart';

import 'home_tiku_list.dart';

class HomeOnePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeOnePageState();
  }
}

class _HomeOnePageState extends State<HomeOnePage>{
  List<AdvertiseConfig> items = [];
  List<HomeIconBean> homeIconsList = new List();
  HomeDocData homeDocData;
  HomeExisersEntity homeExi;

  @override
  void initState() {
    _handleRefresh();
    print("initState");
    super.initState();
  }

//  @override
//  // TODO: implement wantKeepAlive
//  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Color(0xfffafafa),
        child: items == null || items.length < 0
            ? Center(
          child: CircularProgressIndicator(),
        )
            : Container(
          color: Color(0xfffafafa),
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: getChildren(),
          ),
        ));
  }

  List<Widget> getChildren() {
    List<Widget> children = new List();
    if (items.length > 0) children.add(createSwipe());
    if (homeIconsList.length > 0) children.add(createHoriTab());
    if (homeDocData != null) children.add(createRecom());
    if (homeExi != null) {
      children.add(createEx());
      if (homeExi.data != null && homeExi.data.isNotEmpty)
        children.add(HomeTiku(homeExi));
    }
    return children;
  }

  //轮播图
  Widget createSwipe() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      color: Colors.white,
      alignment: Alignment.topCenter,
      height: 160,
      child: Swiper(
        itemCount: items.length,
        autoplay: true,
        pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
              color: Colors.grey[300],
              activeColor: Colors.black.withAlpha(80),
              size: 6,
              activeSize: 6,
              space: 1),
          alignment: Alignment.bottomCenter,
        ),
        itemBuilder: (BuildContext context, int index) {
          AdvertiseItem model = items[index].params;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
//                                builder: (context) => WebView(
//                                  url: model.url,
//                                ),
                ),
              );
            },
            child: Container(
              alignment: Alignment.topCenter,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  model.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  //专项入口
  Widget createHoriTab() {
    return Container(
      color: Colors.white,
      height: 80,
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: homeIconsList.length,
          itemBuilder: (BuildContext context, int index) {
            HomeIconBean homeIconBean = homeIconsList[index];
            return Container(
              height: 80,
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: <Widget>[
                  IconButton(
                      icon: homeIconBean.url == null
                          ? Image.asset(
                        homeIconBean.icon,
                        height: 50,
                        width: 50,
                      )
                          : Image.network(
                        homeIconBean.url,
                        height: 50,
                        width: 50,
                      ),
                      onPressed: () {}),
                  Text(
                    homeIconBean.name,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                        fontFamily: "pingfang"),
                  )
                ],
              ),
            );
          }),
    );
  }

  void addSignUpExamPaperTypeBean(int requestType, String name, String icon) {
    HomeIconBean iconBean = new HomeIconBean();
    iconBean.requestType = requestType;
    iconBean.name = name;
    iconBean.icon = icon;
    homeIconsList.add(iconBean);
  }

  void homeIcon() {
    homeIconsList.clear();
    addSignUpExamPaperTypeBean(
        ArenaConstant.EXAM_ENTER_FORM_TYPE_ZHENTI_YANLIAN,
        "真题演练",
        "images/homef_pt_exam_real.png");
    addSignUpExamPaperTypeBean(
        ArenaConstant.EXAM_ENTER_FORM_TYPE_SIMULATION_CONTEST,
        "模考大赛",
        "images/homef_pt_simulation_contest.png");
    addSignUpExamPaperTypeBean(ArenaConstant.EXAM_ENTER_FORM_TYPE_AI_PRACTICE,
        "智能刷题", "images/homef_pt_ai_exercise.png");
    addSignUpExamPaperTypeBean(ArenaConstant.EXAM_ENTER_FORM_TYPE_SMALL_MATCH,
        "小模考", "images/homef_pt_small_match.png");
    addSignUpExamPaperTypeBean(
        ArenaConstant.EXAM_ENTER_FORM_TYPE_ACCURATE_GUFEN,
        "精准估分",
        "images/homef_pt_exam_esti_score.png");
    addSignUpExamPaperTypeBean(ArenaConstant.START_EVALUATE_REPORT, "评估报告",
        "images/homef_pt_eve_report.png");
    addSignUpExamPaperTypeBean(ArenaConstant.EXAM_ENTER_FORM_TYPE_CUOTI_LIANXI,
        "错题重练", "images/homef_pt_error_paper_exercise.png");
    addSignUpExamPaperTypeBean(ArenaConstant.START_PAGER_RECORD, "答题记录",
        "images/homef_pt_exam_recorder.png");
    addSignUpExamPaperTypeBean(ArenaConstant.EXAM_ENTER_FORM_TYPE_MEIRI_TEXUN,
        "每日特训", "images/homef_pt_special_daily.png");
    addSignUpExamPaperTypeBean(ArenaConstant.EXAM_ENTER_FORM_TYPE_MOKAOGUFEN,
        "专项模考", "images/homef_pt_exam_simulation.png");
    addSignUpExamPaperTypeBean(ArenaConstant.START_PAGER_FAVORITE_COLLECT, "收藏",
        "images/homef_pt_exam_collection.png");
    addSignUpExamPaperTypeBean(ArenaConstant.START_PAGER_DOWNLOAD_PAPER, "下载",
        "images/homef_pt_exam_download.png");
  }

  //专项练习
  Widget createEx() {
    return Container(
      color: Colors.white,
      height: 40,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 40,
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 5,
                    height: 20,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    homeDocData.customizeDoc.defaultDoc,
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  //推荐
  Widget createRecom() {
    return homeDocData == null
        ? Center(
      child: CircularProgressIndicator(),
    )
        : Container(
      color: Colors.white,
      height: 100,
      padding: EdgeInsets.only(left: 10, right: 10),
      margin: EdgeInsets.only(bottom: 5),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 40,
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 5,
                    height: 20,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    homeDocData.homeOperateDoc == null
                        ? "为你推荐"
                        : homeDocData.homeOperateDoc.defaultDoc,
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeDocData.messageList.length,
              itemBuilder: (BuildContext context, int index) {
                HomeDocDataMessageList mesg =
                homeDocData.messageList[index];
                return Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      mesg.params.image,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

//  Widget createTimu(List<ExiserData> data) {
//    return Wrap(children: [
//      Container(
//        color: Colors.white,
//        padding: EdgeInsets.only(left: 10, right: 10),
//        child: ListView.builder(
//            physics: NeverScrollableScrollPhysics(),
//            scrollDirection: Axis.vertical,
//            itemCount: data.length,
//            shrinkWrap: true,
//            itemBuilder: (BuildContext context, int index) {
//              ExiserData dataBean = data[index];
//              return Container(
//                alignment: Alignment.centerLeft,
////                padding: EdgeInsets.all(5),
////                height: 100,
//                child: ListView(
//                  physics: NeverScrollableScrollPhysics(),
//                  scrollDirection: Axis.vertical,
//                  shrinkWrap: true,
//                  children: createTikuSec(dataBean),
//                ),
//              );
//            }),
//      )
//    ]);
//  }

  Future<void> _handleRefresh() async {
    UserInfoUtil.subject = ArenaConstant.ADMINISTRATIVE_APTITUDE_TEST;
    try {
      print("_handleRefresh == " + items.length.toString());
      if (items.length == 0) {
        AdvertiseDao.fetch(success: getLoopPicsSuccess, error: (msg) {});
      }
      if (homeIconsList.length == 0)
        AdvertiseDao.fetchHomeIcon(
            success: getHomeIconSuccess,
            error: (msg) {
              homeIcon();
            });
      AdvertiseDao.fetchHomeDoc(success: (homedoc) {
        homeDocData = homedoc;
        setState(() {});
      });
      getCoursePoints(0);
    } catch (e) {
      setState(() {
        print(e);
        setState(() {});
      });
    }
    return null;
  }

  void getCoursePoints(int parentId, {HomeExisersData data}) {
    AdvertiseDao.fetchHomeEXIS(
        success: (homeexi) {
          if (homeExi == null)
            homeExi = homeexi;
          else if (data != null) {
            HomeExisersEntity entity = homeexi;
            if (data != null) {
              data.children = entity.data;
            }
          }
          setState(() {});
        },
        params: {'parentId': parentId, 'flag': 1});
  }

  void getHomeIconSuccess(genericHomeIcons) {
    GenericHomeIcons icons = genericHomeIcons;
    homeIconsList = icons.data;
    setState(() {});
  }

  void getLoopPicsSuccess(genericCollection) {
    print(genericCollection.toString());
    GenericCollection config = genericCollection;
    items = config.data;
    setState(() {});
  }
}