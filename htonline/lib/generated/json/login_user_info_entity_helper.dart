import 'package:htonline/model/login_user_info_entity.dart';

loginUserInfoEntityFromJson(LoginUserInfoEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new LoginUserInfoData().fromJson(json['data']);
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> loginUserInfoEntityToJson(LoginUserInfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	data['code'] = entity.code;
	return data;
}

loginUserInfoDataFromJson(LoginUserInfoData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['email'] != null) {
		data.email = json['email']?.toString();
	}
	if (json['mobile'] != null) {
		data.mobile = json['mobile']?.toString();
	}
	if (json['nick'] != null) {
		data.nick = json['nick']?.toString();
	}
	if (json['signature'] != null) {
		data.signature = json['signature']?.toString();
	}
	if (json['uname'] != null) {
		data.uname = json['uname']?.toString();
	}
	if (json['expireTime'] != null) {
		data.expireTime = json['expireTime']?.toInt();
	}
	if (json['token'] != null) {
		data.token = json['token']?.toString();
	}
	if (json['subject'] != null) {
		data.subject = json['subject']?.toInt();
	}
	if (json['subjectName'] != null) {
		data.subjectName = json['subjectName']?.toString();
	}
	if (json['area'] != null) {
		data.area = json['area']?.toInt();
	}
	if (json['areaName'] != null) {
		data.areaName = json['areaName']?.toString();
	}
	if (json['ucId'] != null) {
		data.ucId = json['ucId']?.toString();
	}
	if (json['audit'] != null) {
		data.audit = json['audit'];
	}
	if (json['avatar'] != null) {
		data.avatar = json['avatar']?.toString();
	}
	if (json['qcount'] != null) {
		data.qcount = json['qcount']?.toInt();
	}
	if (json['errorQcount'] != null) {
		data.errorQcount = json['errorQcount']?.toInt();
	}
	if (json['catgory'] != null) {
		data.catgory = json['catgory']?.toInt();
	}
	if (json['regFrom'] != null) {
		data.regFrom = json['regFrom']?.toString();
	}
	if (json['firstLogin'] != null) {
		data.firstLogin = json['firstLogin'];
	}
	if (json['openId'] != null) {
		data.openId = json['openId']?.toString();
	}
	if (json['bindMobile'] != null) {
		data.bindMobile = json['bindMobile']?.toInt();
	}
	if (json['registerFreeCourseDetailVo'] != null) {
		data.registerFreeCourseDetailVo = json['registerFreeCourseDetailVo']?.toString();
	}
	return data;
}

Map<String, dynamic> loginUserInfoDataToJson(LoginUserInfoData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['status'] = entity.status;
	data['email'] = entity.email;
	data['mobile'] = entity.mobile;
	data['nick'] = entity.nick;
	data['signature'] = entity.signature;
	data['uname'] = entity.uname;
	data['expireTime'] = entity.expireTime;
	data['token'] = entity.token;
	data['subject'] = entity.subject;
	data['subjectName'] = entity.subjectName;
	data['area'] = entity.area;
	data['areaName'] = entity.areaName;
	data['ucId'] = entity.ucId;
	data['audit'] = entity.audit;
	data['avatar'] = entity.avatar;
	data['qcount'] = entity.qcount;
	data['errorQcount'] = entity.errorQcount;
	data['catgory'] = entity.catgory;
	data['regFrom'] = entity.regFrom;
	data['firstLogin'] = entity.firstLogin;
	data['openId'] = entity.openId;
	data['bindMobile'] = entity.bindMobile;
	data['registerFreeCourseDetailVo'] = entity.registerFreeCourseDetailVo;
	return data;
}