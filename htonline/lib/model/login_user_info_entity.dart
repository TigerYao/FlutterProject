import 'package:htonline/generated/json/base/json_convert_content.dart';

class LoginUserInfoEntity with JsonConvert<LoginUserInfoEntity> {
	LoginUserInfoData data;
	int code;
}

class LoginUserInfoData with JsonConvert<LoginUserInfoData> {
	int id;
	int status;
	String email;
	String mobile;
	String nick;
	String signature;
	String uname;
	int expireTime;
	String token;
	int subject;
	String subjectName;
	int area;
	String areaName;
	String ucId;
	bool audit = false;
	String avatar;
	int qcount;
	int errorQcount;
	int catgory;
	String regFrom;
	bool firstLogin = false;
	String openId;
	int bindMobile;
	String registerFreeCourseDetailVo;
}
