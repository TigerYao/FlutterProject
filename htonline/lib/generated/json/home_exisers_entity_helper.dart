import 'package:htonline/model/home_exisers_entity.dart';

homeExisersEntityFromJson(HomeExisersEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new List<HomeExisersData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new HomeExisersData().fromJson(v));
		});
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> homeExisersEntityToJson(HomeExisersEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['code'] = entity.code;
	return data;
}

homeExisersDataFromJson(HomeExisersData data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['qnum'] != null) {
		data.qnum = json['qnum']?.toInt();
	}
	if (json['rnum'] != null) {
		data.rnum = json['rnum']?.toInt();
	}
	if (json['wnum'] != null) {
		data.wnum = json['wnum']?.toInt();
	}
	if (json['unum'] != null) {
		data.unum = json['unum']?.toInt();
	}
	if (json['times'] != null) {
		data.times = json['times']?.toInt();
	}
	if (json['speed'] != null) {
		data.speed = json['speed']?.toInt();
	}
	if (json['level'] != null) {
		data.level = json['level']?.toInt();
	}
	if (json['accuracy'] != null) {
		data.accuracy = json['accuracy']?.toDouble();
	}
	if (json['children'] != null) {
		data.children = new List<HomeExisersData>();
		(json['children'] as List).forEach((v) {
			data.children.add(new HomeExisersData().fromJson(v));
		});
	}
	if (json['unfinishedPracticeId'] != null) {
		data.unfinishedPracticeId = json['unfinishedPracticeId']?.toInt();
	}
	if (json['userQnum'] != null) {
		data.userQnum = json['userQnum']?.toInt();
	}
	if (json['show'] != null) {
		data.show = json['show'];
	}
	return data;
}

Map<String, dynamic> homeExisersDataToJson(HomeExisersData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['qnum'] = entity.qnum;
	data['rnum'] = entity.rnum;
	data['wnum'] = entity.wnum;
	data['unum'] = entity.unum;
	data['times'] = entity.times;
	data['speed'] = entity.speed;
	data['level'] = entity.level;
	data['accuracy'] = entity.accuracy;
	if (entity.children != null) {
		data['children'] =  entity.children.map((v) => v.toJson()).toList();
	}
	data['unfinishedPracticeId'] = entity.unfinishedPracticeId;
	data['userQnum'] = entity.userQnum;
	data['show'] = entity.show;
	return data;
}