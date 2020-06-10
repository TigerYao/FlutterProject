import 'package:htonline/model/course_info_entity.dart';

courseInfoEntityFromJson(CourseInfoEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new List<CourseInfoData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new CourseInfoData().fromJson(v));
		});
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> courseInfoEntityToJson(CourseInfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['code'] = entity.code;
	return data;
}

courseInfoDataFromJson(CourseInfoData data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['cateId'] != null) {
		data.cateId = json['cateId']?.toInt();
	}
	if (json['checked'] != null) {
		data.checked = json['checked'];
	}
	if (json['interview'] != null) {
		data.interview = json['interview'];
	}
	if (json['cateKey'] != null) {
		data.cateKey = json['cateKey']?.toInt();
	}
	return data;
}

Map<String, dynamic> courseInfoDataToJson(CourseInfoData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['cateId'] = entity.cateId;
	data['checked'] = entity.checked;
	data['interview'] = entity.interview;
	data['cateKey'] = entity.cateKey;
	return data;
}