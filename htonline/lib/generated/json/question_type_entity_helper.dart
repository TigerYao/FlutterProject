import 'package:htonline/model/question_type_entity.dart';

questionTypeEntityFromJson(QuestionTypeEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new List<QuestionTypeData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new QuestionTypeData().fromJson(v));
		});
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> questionTypeEntityToJson(QuestionTypeEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['code'] = entity.code;
	return data;
}

questionTypeDataFromJson(QuestionTypeData data, Map<String, dynamic> json) {
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

Map<String, dynamic> questionTypeDataToJson(QuestionTypeData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['sort'] = entity.sort;
	data['pid'] = entity.pid;
	return data;
}