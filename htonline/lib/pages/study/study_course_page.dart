import 'package:flutter/material.dart';
import 'package:htonline/dao/course_detail_dao.dart';
import 'package:htonline/model/course_detail_entity.dart';

class StudyCoursePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudyCoursePageState();
  }
}

class _StudyCoursePageState extends State {
  CourseDetailData courseDetailData;

  @override
  void initState() {
    super.initState();
    getCourseList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
        child: courseDetailData == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: courseDetailData.data.length,
                itemBuilder: (BuildContext context, int index) {
                  CourseDetailDataData detailDataData =
                      courseDetailData.data[index];
                  return ListTile(
                    title: Text(detailDataData.title),
                  );
                }),
        onRefresh: () {
          getCourseList();
          return;
        });
  }

  void getCourseList() {
    CourseDao.fetchCourseBuyList(0, 0, 1, success: (data) {
      courseDetailData = data;
      setState(() {

      });
    });
  }
}
