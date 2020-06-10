import 'dart:core' as prefix0;
import 'dart:core';

import 'package:htonline/generated/json/home_doc_entity_helper.dart';
import 'package:htonline/generated/json/home_exisers_entity_helper.dart';
import 'package:htonline/generated/json/login_user_info_entity_helper.dart';
import 'package:htonline/generated/json/question_type_entity_helper.dart';
import 'package:htonline/httputils.dart';
import 'package:htonline/model/catory_listentity_entity.dart';
import 'package:htonline/model/course_info_entity.dart';
import 'package:htonline/model/advertise.dart';
import 'package:htonline/model/essay_question_entity.dart';
import 'package:htonline/model/home_doc_entity.dart';
import 'package:htonline/model/home_exisers_entity.dart';
import 'package:htonline/model/homeicon.dart';
import 'package:htonline/model/login_user_info_entity.dart';
import 'package:htonline/model/question_type_entity.dart';
import 'package:htonline/model/search_keywords_bean_entity.dart';
import 'package:htonline/model/user_info.dart';

const HOME_URL = '/u/v5/users/bc/list?category=1&fur=0';
const HOME_ICON = 'u/v2/icon?subjectId=1&cv=7.2.190';
const HOME_RECOMMEND = '/u/v5/users/bc/homeOperation?category=1&cv=7.2.190';
const HOME_EXEC = '/k/v1/points/collectionsByNode';
const HOME_COURSE_CATEGORY = "/c/v6/my/cateList";
const HOME_COURSE_LIST = '/c/v6/courses/listNew';
const HOME_COURSE_SEARCH = '/s/v1/search/course/keywords';
const HOME_COURSE_KEY_SEARCH =
    '/c/v6/courses/search?keyWord=%E8%8F%81%E8%8B%B1%E6%99%BA%E8%83%9C%E7%8F%AD&cateId=10000&page=1&pageSize=10&isRecommend=1&isHistory=-1';
const LOGIN_BY_PSW = '/u/v3/users/login';
const QUESTION_TYPE = '/e/api/v3/single/questionTypeList';
const QUESTION_LIST = '/e/api/v4/single/questionList/';

class AdvertiseDao {
  static void fetch({Function success, Function error}) {
    HttpUtil.get(HOME_URL, headers: HttpUtil.getHeaders(),
        success: (data, result) {
      print(result);
      success(GenericCollection.fromJson(result));
    }, error: (msg) {
      print("erro...." + msg);
    });
  }

  static void fetchHomeIcon({Function success, Function error}) {
    HttpUtil.get(HOME_ICON, headers: HttpUtil.getHeaders(),
        success: (data, result) {
      print(result);
      success(GenericHomeIcons.fromJson(result));
    }, error: (msg) {
      print("erro...." + msg);
    });
  }

  static void fetchHomeDoc({Function success, Function error}) {
    HttpUtil.get(HOME_RECOMMEND, headers: HttpUtil.getHeaders(),
        success: (data, result) {
      print(result);
      success(homeDocDataFromJson(HomeDocData(), data));
    }, error: (msg) {
      print("erro...." + msg);
    });
  }

  static void fetchHomeEXIS(
      {Function success, Function error, Map<String, dynamic> params}) {
    HttpUtil.get(HOME_EXEC, data: params, headers: HttpUtil.getHeaders(),
        success: (data, result) {
      success(homeExisersEntityFromJson(HomeExisersEntity(), result));
    }, error: (msg) {
      print("fetchHomeEXIS..erro...." + msg);
    });
  }

  static void fetchHomeCourseCategroy(
      {Function success, Function error, Map<String, dynamic> params}) {
    HttpUtil.get(HOME_COURSE_CATEGORY,
        data: params, headers: HttpUtil.getHeaders(), success: (data, result) {
      print(HOME_EXEC);
      print(result);
      success(CourseInfoEntity().fromJson(result));
    }, error: (msg) {
      print("fetchHomeCourseCategroy..erro...." + msg);
    });
  }

  static void fetchHomeCourseList(String categoryId,
      {Function success, Function error}) {
    Map<String, dynamic> params = {'cateId': categoryId};
    print("fetchHomeCourseList....");
    HttpUtil.get(HOME_COURSE_LIST, data: params, headers: HttpUtil.getHeaders(),
        success: (data, result) {
      print(HOME_EXEC);
      print(result);
      success(CatoryListentityEntity().fromJson(result));
    }, error: (msg) {
      print("fetchHomeCourseList..erro...." + msg);
    });
  }

  static void fetchHomeSearchKeysList({Function success, Function error}) {
    print("fetchHomeSearchKeysList....");
    HttpUtil.get(HOME_COURSE_SEARCH, headers: HttpUtil.getHeaders(),
        success: (data, result) {
      print(HOME_EXEC);
      print(result);
      success(SearchKeywordsBeanEntity().fromJson(data));
    }, error: (msg) {
      print("fetchHomeSearchKeysList..erro...." + msg);
    });
  }

  static void fetchHomeSearchKeyWords(String keyWord, String cateId, int page,
      {Function success, Function error}) {
    Map<String, dynamic> params = {
      'keyWord': keyWord,
      'cateId': cateId,
      'page': page,
      'pageSize': 10,
      'isRecommend': 1,
      'isHistory': -1
    };
    HttpUtil.get(HOME_COURSE_KEY_SEARCH,
        data: params, headers: HttpUtil.getHeaders(), success: (data, result) {
      success(SearchKeywordsBeanEntity().fromJson(data));
    }, error: (msg) {
      print("fetchHomeSearchKeyWords..erro...." + msg);
    });
  }

  static void fetchLoginByPsw(String userName, String psw,
      {Function success, Function error}) {
    Map<String, dynamic> params = {
      'account': userName,
      'password': psw,
      'captcha': '',
      'catgory': 1,
      'deviceToken': UserInfoUtil.deviceName
    };
    StringBuffer options = new StringBuffer('?');
    params.forEach((key, value) {
      options.write('${key}=${value}&');
    });
    String optionsStr = options.toString();
    optionsStr = optionsStr.substring(0, optionsStr.length - 1);
    String url = LOGIN_BY_PSW + optionsStr;
    HttpUtil.post(url, headers: HttpUtil.getHeaders(),
        success: (Map<String, dynamic> data, Map<String, dynamic> result) {
      print('fetchLoginByPsw...' + result.toString());
      success(LoginUserInfoData().fromJson(data));
    }, error: (msg) {
      print('fetchLoginByPsw...' + msg);
    });
  }

  static void fetchQuestionTypes({Function success, Function error}) {
    HttpUtil.get(QUESTION_TYPE, headers: HttpUtil.getHeaders(),
        success: (List<dynamic> data, Map<String, dynamic> result) {
      print(data.toString());
      QuestionTypeEntity entity = QuestionTypeEntity();
      entity.data = data.map((map) {
        return QuestionTypeData().fromJson(map);
      }).toList();
      success(entity);
    }, error: (msg) {
      print('fetchQuestionTypes==' + msg);
    });
  }

  static void fetchQuestionList(int type, int page,
      {Function success, Function error}) {
    String url = QUESTION_LIST + '${type}?page=${page}';
    HttpUtil.get(url, headers: HttpUtil.getHeaders(),
        success: (Map<String, dynamic> data, Map<String, dynamic> result) {
      EssayQuestionData entity = EssayQuestionData().fromJson(data);
      success(entity);
    });
  }
}
