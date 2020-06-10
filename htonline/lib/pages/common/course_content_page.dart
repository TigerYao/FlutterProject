import 'package:flutter/material.dart';
import 'package:htonline/dao/advertiseDao.dart';
import 'package:htonline/model/catory_listentity_entity.dart';
import 'package:htonline/model/search_info_entity.dart';

//ignore: must_be_immutable
class CourseContentListPage extends StatefulWidget {
  String cateId;

  CourseContentListPage(this.cateId);

  @override
  State createState() {
    return _CourseContentListPageState();
  }
}

class _CourseContentListPageState extends State<CourseContentListPage>
    with AutomaticKeepAliveClientMixin {
  Widget listView;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    getData(widget.cateId);
  }

  @override
  Widget build(BuildContext context) {
    return listView == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            child: listView,
          );
  }

  void getData(String cateId) {
    AdvertiseDao.fetchHomeCourseList(cateId, success: (data) {
      createWidget(data);
    });
  }

  void getSearchData(String keywords, String cateId, int page) {
    AdvertiseDao.fetchHomeSearchKeyWords(keywords, cateId, page, success: (data) {
      createWidget(data);
    });
  }

  void createWidget(data) {
    CatoryListentityEntity entity = data;
    if (entity.data.isEmpty) return;
    listView = ListView.builder(
        shrinkWrap: true,
        itemCount: entity.data.length,
        itemBuilder: (BuildContext context, int index) {
          CatoryListentityData catoryData = entity.data[index];
          return Container(
            child: ListView(
              shrinkWrap: true, //为true可以解决子控件必须设置高度的问题
              physics: NeverScrollableScrollPhysics(), //禁用滑动事件
              children: <Widget>[
                getTitle(catoryData),
                getContent(catoryData),
                Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        height: 30,
                        width: 100,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '查看更多',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          );
        });
    setState(() {});
  }


  Widget getTitle(CatoryListentityData catoryData) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.white,
      height: 40,
      child: Row(
        children: <Widget>[
          Container(
            child: Image.network(
              catoryData.img,
              height: 20,
              width: 20,
            ),
            padding: EdgeInsets.only(left: 10, right: 5),
          ),
          Expanded(
              child: Text(
            catoryData.title,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A4A4A)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
          ))
        ],
      ),
    );
  }

  Widget getContent(CatoryListentityData catoryData) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true, //为true可以解决子控件必须设置高度的问题
          physics: NeverScrollableScrollPhysics(), //禁用滑动事件
          itemCount: catoryData.data.length,
          itemBuilder: (BuildContext context, int index) {
            CatoryListentityDataData data = catoryData.data[index];
            return data.isCollect
                ? Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: getContentItems(data),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/collect_bg.png'),
                      ),
                    ),
                  )
//            SizedBox(child: Card(
//                    elevation: 10.0,
//                    //设置阴影
//                    shape: const RoundedRectangleBorder(
//                        borderRadius:
//                        BorderRadius.all(Radius.circular(1.0))),
//                    //设置圆角
//                    child:
//                    Container(
//                      height: 200,
//                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: getContentItems(data),
//                      ),
//                      decoration: BoxDecoration(
//                        color: Colors.grey,
//                        image:  DecorationImage(
//                          fit: BoxFit.fill,
//                          image: AssetImage('images/collect_bg.png'),
//                        ),
//                      ),
//                    )
//                ))
                : Container(
                    margin: EdgeInsets.only(bottom: 2),
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 5),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: getContentItems(data),
                    ),
                  );
          }),
    );
  }

  List<Widget> getContentItems(CatoryListentityDataData data) {
    List<Widget> widgetLists = List();
    widgetLists.add(Text(
      data.title,
      style: TextStyle(fontSize: 16, color: Color(0xFF4A4A4A)),
      softWrap: true,
    ));
    if (data.brief != null && data.brief.isNotEmpty)
      widgetLists.add(Text(
        data.brief == null ? "" : data.brief,
        style: TextStyle(fontSize: 12, color: Color(0xFF9B9B9B)),
        softWrap: true,
      ));
    if (data.timeLength != null && data.timeLength.isNotEmpty)
      widgetLists.add(Text(
        data.timeLength == null ? "" : data.timeLength,
        style: TextStyle(fontSize: 12, color: Color(0xFF9B9B9B)),
        softWrap: true,
      ));
    if (data.teacher != null && data.teacher.isNotEmpty)
      widgetLists.add(Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.bottomLeft,
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  //为true可以解决子控件必须设置高度的问题
                  physics: NeverScrollableScrollPhysics(),
                  //禁用滑动事件
                  itemCount: data.teacher.length,
                  itemBuilder: (BuildContext context, int index) {
                    CatoryListentityDataDataTeacher teacherData =
                        data.teacher[index];
                    return Container(
                      margin: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            child: Image.network(
                              teacherData.roundPhoto,
                              height: 30,
                              width: 30,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          Text(
                            teacherData.teacherName,
                            style: TextStyle(
                                color: Color(0xFF4A4A4A), fontSize: 10),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 2),
                          child: Text(
                            "¥" + data.actualPrice,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 2, left: 5),
                        child: Text(
                          data.price == null || data.price.isEmpty
                              ? ""
                              : "¥" + data.price,
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black38,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text(
                        data.count.toString() + "人已抢购",
                        style:
                            TextStyle(color: Color(0xFF6C7172), fontSize: 10),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ));
    return widgetLists;
  }
}
