import 'package:htonline/httputils.dart';
import 'package:htonline/model/course_detail_entity.dart';

const String COURSE_BUY_LIST = '/c/v6/my/courses';
class CourseDao{
  static void fetchCourseBuyList(int isDelete, int recentlyStudy, int page, {Function success, Function error}){
    Map<String, dynamic> params = {'isDelete':isDelete, 'recentlyStudy':recentlyStudy, 'page':page, 'pageSize':'20'};
    HttpUtil.get(COURSE_BUY_LIST, data: params, headers: HttpUtil.getHeaders(), success: (data, result){
      success(CourseDetailData().fromJson(data));
    }, error: (msg){});
  }
}