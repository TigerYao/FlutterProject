import 'package:htonline/model/registerfree_coursebean.dart';

class UserInfoBean {
   String code;
   UserInfo data;
   String message;
}


/**
 * id	long	用户id
 * status	int	1:可用 2:初始化状态，此状态用户，需要继续完善个人信息 3:删除
 * email	string	邮箱
 * mobile	string	手机号
 * nick	string	昵称
 * uname	string	网校唯一性标示，和网校交互时用到
 * expireTime	long	过期时间
 * subject	int	科目
 * area	int	考试区域
 * areaName string 考试区域名字
 * token
 *
 * "id": ,
    "status": 1,
    "email": "",
    "mobile": "",
    "nick": "",
    "uname": "",
    "expireTime": ,
    "token": "",
    "subject": 1,
    "subjectName": "公务员行测",
    "area": -9,
    "areaName": "全国",
    "ucId": 0,
    "audit": false,
    "avatar": "",
    "qcount": 2,
    "errorQcount": 0
 */

class UserInfo {
  int id;
  String email;
  String mobile;
  String nick;
  String uname;
  String status;
  String expireTime;
  String token;
  int subject;
  int catgory;
  String subjectName;
  int area;
  String areaName;
  String avatar;
  int qcount;
  int errorQcount;

  bool firstLogin;

  RegisterFreeCourseBean registerFreeCourseDetailVo;

}