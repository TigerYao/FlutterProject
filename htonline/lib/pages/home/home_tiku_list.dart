import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:htonline/dao/advertiseDao.dart';
import 'package:htonline/model/home_exisers_entity.dart';

class HomeTiku extends StatefulWidget {
  HomeExisersEntity homeExi;

  HomeTiku(this.homeExi);

  @override
  State createState() {
    // TODO: implement createState
    return _HomeTiku();
  }
}

class _HomeTiku extends State<HomeTiku> {
  @override
  Widget build(BuildContext context) {
    return createTimu(widget.homeExi.data);
  }

  Widget createTimu(List<HomeExisersData> data) {
    return Wrap(children: [
      Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 10, right: 10),
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              HomeExisersData dataBean = data[index];
              return Container(
                alignment: Alignment.centerLeft,
//                padding: EdgeInsets.all(5),
//                height: 100,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: dataBean == null ? Center(child: CircularProgressIndicator(),) : createTikuSec(dataBean),
                ),
              );
            }),
      )
    ]);
  }

  List<Widget> createTikuSec(HomeExisersData dataBean) {
    List<Widget> lists = new List();
    String imgName = !dataBean.show
        ? "images/tree_indicator${(dataBean.level + 1)}_fold.png"
        : "images/tree_indicator${(dataBean.level + 1)}_expand.png";
    lists.add(Row(
      children: <Widget>[
        IconButton(
            icon: Image.asset(
              imgName,
              height: 10,
              width: 10,
            ),
            onPressed: () {
              if (dataBean.level == 2) return;
              dataBean.show = !dataBean.show;
              getCoursePoints(dataBean.id, data: dataBean);
            }),
        Text(
          dataBean.name,
          softWrap: true,
          style: TextStyle(fontSize: 14),
        ),
      ],
    ));
    if (dataBean.children != null &&
        dataBean.children.isNotEmpty &&
        dataBean.show) {
      lists.add(createTimu(dataBean.children));
    } else if (dataBean.children == null && dataBean.show) {
      getCoursePoints(dataBean.id, data: dataBean);
    }
    return lists;
  }

  void getCoursePoints(int parentId, {HomeExisersData data}) {
    AdvertiseDao.fetchHomeEXIS(
        success: (homeexi) {
         if (data != null) {
            HomeExisersEntity entity = homeexi;
            if (data != null) {
              data.children = entity.data;
              setState(() {});
            }
          }
        },
        params: {'parentId': parentId, 'flag': 1});
  }
}
