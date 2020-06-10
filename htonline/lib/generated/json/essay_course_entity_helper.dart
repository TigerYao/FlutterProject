import 'package:htonline/model/essay_course_entity.dart';

essayCourseEntityFromJson(EssayCourseEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new List<EssayCourseData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new EssayCourseData().fromJson(v));
		});
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> essayCourseEntityToJson(EssayCourseEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['code'] = entity.code;
	return data;
}

essayCourseDataFromJson(EssayCourseData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['sort'] != null) {
		data.sort = json['sort']?.toInt();
	}
	if (json['pid'] != null) {
		data.pid = json['pid']?.toInt();
	}
	return data;
}

Map<String, dynamic> essayCourseDataToJson(EssayCourseData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['sort'] = entity.sort;
	data['pid'] = entity.pid;
	return data;
}