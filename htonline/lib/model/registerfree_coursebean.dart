class RegisterFreeCourseBean {
  int rcoin; //金币
  int rgrowUpValue; //成长值
  String rtitle; //注册成功送课页的标题
  List<CouponCourseBean> rcourseList;
// int ucId;
}

class CouponCourseBean {
  int lesson; //课时
  String name; //课程名称
  String time;
}
