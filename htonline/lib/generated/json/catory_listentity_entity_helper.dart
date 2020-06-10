import 'package:htonline/model/catory_listentity_entity.dart';

catoryListentityEntityFromJson(CatoryListentityEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new List<CatoryListentityData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new CatoryListentityData().fromJson(v));
		});
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> catoryListentityEntityToJson(CatoryListentityEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['code'] = entity.code;
	return data;
}

catoryListentityDataFromJson(CatoryListentityData data, Map<String, dynamic> json) {
	if (json['cateId'] != null) {
		data.cateId = json['cateId']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['order'] != null) {
		data.order = json['order']?.toInt();
	}
	if (json['img'] != null) {
		data.img = json['img']?.toString();
	}
	if (json['number'] != null) {
		data.number = json['number']?.toInt();
	}
	if (json['more'] != null) {
		data.more = json['more'];
	}
	if (json['typeId'] != null) {
		data.typeId = json['typeId']?.toInt();
	}
	if (json['data'] != null) {
		data.data = new List<CatoryListentityDataData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new CatoryListentityDataData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> catoryListentityDataToJson(CatoryListentityData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['cateId'] = entity.cateId;
	data['title'] = entity.title;
	data['order'] = entity.order;
	data['img'] = entity.img;
	data['number'] = entity.number;
	data['more'] = entity.more;
	data['typeId'] = entity.typeId;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

catoryListentityDataDataFromJson(CatoryListentityDataData data, Map<String, dynamic> json) {
	if (json['classId'] != null) {
		data.classId = json['classId']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['cateId'] != null) {
		data.cateId = json['cateId']?.toString();
	}
	if (json['teacherDesc'] != null) {
		data.teacherDesc = json['teacherDesc']?.toString();
	}
	if (json['actualPrice'] != null) {
		data.actualPrice = json['actualPrice']?.toString();
	}
	if (json['price'] != null) {
		data.price = json['price']?.toString();
	}
	if (json['img'] != null) {
		data.img = json['img']?.toString();
	}
	if (json['timeLength'] != null) {
		data.timeLength = json['timeLength']?.toString();
	}
	if (json['isTermined'] != null) {
		data.isTermined = json['isTermined'];
	}
	if (json['terminedDesc'] != null) {
		data.terminedDesc = json['terminedDesc']?.toString();
	}
	if (json['isSuit'] != null) {
		data.isSuit = json['isSuit'];
	}
	if (json['secondKill'] != null) {
		data.secondKill = json['secondKill'];
	}
	if (json['brief'] != null) {
		data.brief = json['brief']?.toString();
	}
	if (json['videoType'] != null) {
		data.videoType = json['videoType']?.toString();
	}
	if (json['redEnvelopeId'] != null) {
		data.redEnvelopeId = json['redEnvelopeId']?.toString();
	}
	if (json['courseType'] != null) {
		data.courseType = json['courseType']?.toString();
	}
	if (json['classType'] != null) {
		data.classType = json['classType']?.toString();
	}
	if (json['isCollect'] != null) {
		data.isCollect = json['isCollect'];
	}
	if (json['limit'] != null) {
		data.limit = json['limit']?.toString();
	}
	if (json['isNew'] != null) {
		data.isNew = json['isNew'];
	}
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['activeTag'] != null) {
		data.activeTag = new List<dynamic>();
		data.activeTag.addAll(json['activeTag']);
	}
	if (json['collageActiveId'] != null) {
		data.collageActiveId = json['collageActiveId']?.toInt();
	}
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	if (json['teacher'] != null) {
		data.teacher = new List<CatoryListentityDataDataTeacher>();
		(json['teacher'] as List).forEach((v) {
			data.teacher.add(new CatoryListentityDataDataTeacher().fromJson(v));
		});
	}
	if (json['limitType'] != null) {
		data.limitType = json['limitType']?.toInt();
	}
	if (json['isRushOut'] != null) {
		data.isRushOut = json['isRushOut'];
	}
	if (json['isSaleOut'] != null) {
		data.isSaleOut = json['isSaleOut'];
	}
	if (json['collectTag'] != null) {
		data.collectTag = json['collectTag']?.toString();
	}
	if (json['collectBrief'] != null) {
		data.collectBrief = json['collectBrief']?.toString();
	}
	if (json['collectId'] != null) {
		data.collectId = json['collectId']?.toInt();
	}
	return data;
}

Map<String, dynamic> catoryListentityDataDataToJson(CatoryListentityDataData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['classId'] = entity.classId;
	data['title'] = entity.title;
	data['cateId'] = entity.cateId;
	data['teacherDesc'] = entity.teacherDesc;
	data['actualPrice'] = entity.actualPrice;
	data['price'] = entity.price;
	data['img'] = entity.img;
	data['timeLength'] = entity.timeLength;
	data['isTermined'] = entity.isTermined;
	data['terminedDesc'] = entity.terminedDesc;
	data['isSuit'] = entity.isSuit;
	data['secondKill'] = entity.secondKill;
	data['brief'] = entity.brief;
	data['videoType'] = entity.videoType;
	data['redEnvelopeId'] = entity.redEnvelopeId;
	data['courseType'] = entity.courseType;
	data['classType'] = entity.classType;
	data['isCollect'] = entity.isCollect;
	data['limit'] = entity.limit;
	data['isNew'] = entity.isNew;
	data['id'] = entity.id;
	if (entity.activeTag != null) {
		data['activeTag'] =  [];
	}
	data['collageActiveId'] = entity.collageActiveId;
	data['count'] = entity.count;
	if (entity.teacher != null) {
		data['teacher'] =  entity.teacher.map((v) => v.toJson()).toList();
	}
	data['limitType'] = entity.limitType;
	data['isRushOut'] = entity.isRushOut;
	data['isSaleOut'] = entity.isSaleOut;
	data['collectTag'] = entity.collectTag;
	data['collectBrief'] = entity.collectBrief;
	data['collectId'] = entity.collectId;
	return data;
}

catoryListentityDataDataTeacherFromJson(CatoryListentityDataDataTeacher data, Map<String, dynamic> json) {
	if (json['teacherId'] != null) {
		data.teacherId = json['teacherId']?.toString();
	}
	if (json['teacherName'] != null) {
		data.teacherName = json['teacherName']?.toString();
	}
	if (json['roundPhoto'] != null) {
		data.roundPhoto = json['roundPhoto']?.toString();
	}
	return data;
}

Map<String, dynamic> catoryListentityDataDataTeacherToJson(CatoryListentityDataDataTeacher entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['teacherId'] = entity.teacherId;
	data['teacherName'] = entity.teacherName;
	data['roundPhoto'] = entity.roundPhoto;
	return data;
}