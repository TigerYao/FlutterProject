import 'package:htonline/model/search_info_entity.dart';
import 'package:htonline/model/catory_listentity_entity.dart';

searchInfoEntityFromJson(SearchInfoEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new SearchInfoData().fromJson(json['data']);
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> searchInfoEntityToJson(SearchInfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	data['code'] = entity.code;
	return data;
}

searchInfoDataFromJson(SearchInfoData data, Map<String, dynamic> json) {
	if (json['current_page'] != null) {
		data.currentPage = json['current_page']?.toInt();
	}
	if (json['data'] != null) {
		data.data = new List<SearchInfoDataData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new SearchInfoDataData().fromJson(v));
		});
	}
	if (json['from'] != null) {
		data.from = json['from']?.toInt();
	}
	if (json['last_page'] != null) {
		data.lastPage = json['last_page']?.toInt();
	}
	if (json['next_page_url'] != null) {
		data.nextPageUrl = json['next_page_url'];
	}
	if (json['path'] != null) {
		data.path = json['path']?.toString();
	}
	if (json['per_page'] != null) {
		data.perPage = json['per_page']?.toInt();
	}
	if (json['prev_page_url'] != null) {
		data.prevPageUrl = json['prev_page_url'];
	}
	if (json['to'] != null) {
		data.to = json['to']?.toInt();
	}
	if (json['total'] != null) {
		data.total = json['total']?.toInt();
	}
	return data;
}

Map<String, dynamic> searchInfoDataToJson(SearchInfoData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['current_page'] = entity.currentPage;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['from'] = entity.from;
	data['last_page'] = entity.lastPage;
	data['next_page_url'] = entity.nextPageUrl;
	data['path'] = entity.path;
	data['per_page'] = entity.perPage;
	data['prev_page_url'] = entity.prevPageUrl;
	data['to'] = entity.to;
	data['total'] = entity.total;
	return data;
}

searchInfoDataDataFromJson(SearchInfoDataData data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['teacherDesc'] != null) {
		data.teacherDesc = json['teacherDesc']?.toString();
	}
	if (json['brief'] != null) {
		data.brief = json['brief']?.toString();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['price'] != null) {
		data.price = json['price']?.toString();
	}
	if (json['createAt'] != null) {
		data.createAt = json['createAt']?.toInt();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['NetClassCategoryId'] != null) {
		data.netClassCategoryId = json['NetClassCategoryId']?.toString();
	}
	if (json['img'] != null) {
		data.img = json['img']?.toString();
	}
	if (json['limit'] != null) {
		data.limit = json['limit']?.toString();
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
	if (json['videoType'] != null) {
		data.videoType = json['videoType']?.toString();
	}
	if (json['redEnvelopeId'] != null) {
		data.redEnvelopeId = json['redEnvelopeId']?.toString();
	}
	if (json['courseType'] != null) {
		data.courseType = json['courseType']?.toString();
	}
	if (json['timestamp'] != null) {
		data.timestamp = json['timestamp']?.toString();
	}
	if (json['saleNum'] != null) {
		data.saleNum = json['saleNum']?.toInt();
	}
	if (json['cateId'] != null) {
		data.cateId = json['cateId']?.toString();
	}
	if (json['classId'] != null) {
		data.classId = json['classId']?.toString();
	}
	if (json['titles'] != null) {
		data.titles = json['titles']?.toString();
	}
	if (json['_id'] != null) {
		data.sId = json['_id']?.toString();
	}
	if (json['highlight'] != null) {
		data.highlight = new SearchInfoDataDataHighlight().fromJson(json['highlight']);
	}
	if (json['isCollect'] != null) {
		data.isCollect = json['isCollect'];
	}
	if (json['isNew'] != null) {
		data.isNew = json['isNew'];
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
	if (json['limitType'] != null) {
		data.limitType = json['limitType']?.toInt();
	}
	if (json['saleStart'] != null) {
		data.saleStart = json['saleStart']?.toInt();
	}
	if (json['saleEnd'] != null) {
		data.saleEnd = json['saleEnd']?.toInt();
	}
	if (json['isRushOut'] != null) {
		data.isRushOut = json['isRushOut'];
	}
	if (json['stopTimeStamp'] != null) {
		data.stopTimeStamp = json['stopTimeStamp']?.toInt();
	}
	if (json['startTimeStamp'] != null) {
		data.startTimeStamp = json['startTimeStamp']?.toInt();
	}
	if (json['isSaleOut'] != null) {
		data.isSaleOut = json['isSaleOut'];
	}
	return data;
}

Map<String, dynamic> searchInfoDataDataToJson(SearchInfoDataData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['teacherDesc'] = entity.teacherDesc;
	data['brief'] = entity.brief;
	data['id'] = entity.id;
	data['price'] = entity.price;
	data['createAt'] = entity.createAt;
	data['status'] = entity.status;
	data['NetClassCategoryId'] = entity.netClassCategoryId;
	data['img'] = entity.img;
	data['limit'] = entity.limit;
	data['timeLength'] = entity.timeLength;
	data['isTermined'] = entity.isTermined;
	data['terminedDesc'] = entity.terminedDesc;
	data['isSuit'] = entity.isSuit;
	data['secondKill'] = entity.secondKill;
	data['videoType'] = entity.videoType;
	data['redEnvelopeId'] = entity.redEnvelopeId;
	data['courseType'] = entity.courseType;
	data['timestamp'] = entity.timestamp;
	data['saleNum'] = entity.saleNum;
	data['cateId'] = entity.cateId;
	data['classId'] = entity.classId;
	data['titles'] = entity.titles;
	data['_id'] = entity.sId;
	if (entity.highlight != null) {
		data['highlight'] = entity.highlight.toJson();
	}
	data['isCollect'] = entity.isCollect;
	data['isNew'] = entity.isNew;
	if (entity.activeTag != null) {
		data['activeTag'] =  [];
	}
	data['collageActiveId'] = entity.collageActiveId;
	data['count'] = entity.count;
	data['limitType'] = entity.limitType;
	data['saleStart'] = entity.saleStart;
	data['saleEnd'] = entity.saleEnd;
	data['isRushOut'] = entity.isRushOut;
	data['stopTimeStamp'] = entity.stopTimeStamp;
	data['startTimeStamp'] = entity.startTimeStamp;
	data['isSaleOut'] = entity.isSaleOut;
	return data;
}

searchInfoDataDataHighlightFromJson(SearchInfoDataDataHighlight data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	return data;
}

Map<String, dynamic> searchInfoDataDataHighlightToJson(SearchInfoDataDataHighlight entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	return data;
}

searchInfoDataDataTeacherFromJson(SearchInfoDataDataTeacher data, Map<String, dynamic> json) {
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

Map<String, dynamic> searchInfoDataDataTeacherToJson(SearchInfoDataDataTeacher entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['teacherId'] = entity.teacherId;
	data['teacherName'] = entity.teacherName;
	data['roundPhoto'] = entity.roundPhoto;
	return data;
}