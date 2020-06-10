import 'package:htonline/model/course_detail_entity.dart';

courseDetailEntityFromJson(CourseDetailEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new CourseDetailData().fromJson(json['data']);
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> courseDetailEntityToJson(CourseDetailEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	data['code'] = entity.code;
	return data;
}

courseDetailDataFromJson(CourseDetailData data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new List<CourseDetailDataData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new CourseDetailDataData().fromJson(v));
		});
	}
	if (json['total'] != null) {
		data.total = json['total']?.toInt();
	}
	if (json['current_page'] != null) {
		data.currentPage = json['current_page']?.toInt();
	}
	if (json['per_page'] != null) {
		data.perPage = json['per_page']?.toInt();
	}
	if (json['last_page'] != null) {
		data.lastPage = json['last_page']?.toInt();
	}
	if (json['topNumber'] != null) {
		data.topNumber = json['topNumber']?.toInt();
	}
	return data;
}

Map<String, dynamic> courseDetailDataToJson(CourseDetailData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	data['total'] = entity.total;
	data['current_page'] = entity.currentPage;
	data['per_page'] = entity.perPage;
	data['last_page'] = entity.lastPage;
	data['topNumber'] = entity.topNumber;
	return data;
}

courseDetailDataDataFromJson(CourseDetailDataData data, Map<String, dynamic> json) {
	if (json['classId'] != null) {
		data.classId = json['classId']?.toString();
	}
	if (json['orderId'] != null) {
		data.orderId = json['orderId']?.toString();
	}
	if (json['buyTime'] != null) {
		data.buyTime = json['buyTime']?.toString();
	}
	if (json['userId'] != null) {
		data.userId = json['userId']?.toString();
	}
	if (json['orderDePrice'] != null) {
		data.orderDePrice = json['orderDePrice']?.toInt();
	}
	if (json['BeginDate'] != null) {
		data.beginDate = json['BeginDate']?.toString();
	}
	if (json['EndTime'] != null) {
		data.endTime = json['EndTime']?.toString();
	}
	if (json['payTime'] != null) {
		data.payTime = json['payTime']?.toString();
	}
	if (json['orderNum'] != null) {
		data.orderNum = json['orderNum']?.toString();
	}
	if (json['isExpired'] != null) {
		data.isExpired = json['isExpired'];
	}
	if (json['lastTime'] != null) {
		data.lastTime = json['lastTime']?.toString();
	}
	if (json['lessonId'] != null) {
		data.lessonId = json['lessonId']?.toInt();
	}
	if (json['completeTime'] != null) {
		data.completeTime = json['completeTime']?.toInt();
	}
	if (json['totalTime'] != null) {
		data.totalTime = json['totalTime']?.toInt();
	}
	if (json['order'] != null) {
		data.order = json['order']?.toInt();
	}
	if (json['isRecord'] != null) {
		data.isRecord = json['isRecord'];
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['rid'] != null) {
		data.rid = json['rid']?.toInt();
	}
	if (json['teachers'] != null) {
		data.teachers = json['teachers']?.toString();
	}
	if (json['lessonCount'] != null) {
		data.lessonCount = json['lessonCount']?.toInt();
	}
	if (json['VideoTypes'] != null) {
		data.videoTypes = json['VideoTypes']?.toString();
	}
	if (json['NetClassCategoryId'] != null) {
		data.netClassCategoryId = json['NetClassCategoryId']?.toInt();
	}
	if (json['actualPrice'] != null) {
		data.actualPrice = json['actualPrice']?.toInt();
	}
	if (json['gradeCate'] != null) {
		data.gradeCate = json['gradeCate']?.toInt();
	}
	if (json['teacherImg'] != null) {
		data.teacherImg = new List<CourseDetailDataDataTeacherImg>();
		(json['teacherImg'] as List).forEach((v) {
			data.teacherImg.add(new CourseDetailDataDataTeacherImg().fromJson(v));
		});
	}
	if (json['oneToOne'] != null) {
		data.oneToOne = json['oneToOne']?.toInt();
	}
	if (json['newTeacherOneToOne'] != null) {
		data.newTeacherOneToOne = json['newTeacherOneToOne']?.toInt();
	}
	if (json['renew'] != null) {
		data.renew = json['renew']?.toInt();
	}
	if (json['protocolUrl'] != null) {
		data.protocolUrl = json['protocolUrl']?.toString();
	}
	if (json['totalSchedule'] != null) {
		data.totalSchedule = json['totalSchedule']?.toInt();
	}
	if (json['isStart'] != null) {
		data.isStart = json['isStart'];
	}
	if (json['liveEnd'] != null) {
		data.liveEnd = json['liveEnd'];
	}
	if (json['todayLive'] != null) {
		data.todayLive = json['todayLive']?.toInt();
	}
	if (json['classType'] != null) {
		data.classType = json['classType']?.toInt();
	}
	if (json['isTop'] != null) {
		data.isTop = json['isTop'];
	}
	if (json['living'] != null) {
		data.living = json['living'];
	}
	if (json['isDone'] != null) {
		data.isDone = json['isDone'];
	}
	if (json['schedule'] != null) {
		data.schedule = json['schedule']?.toInt();
	}
	if (json['descString'] != null) {
		data.descString = json['descString']?.toString();
	}
	if (json['liveStart'] != null) {
		data.liveStart = json['liveStart']?.toInt();
	}
	return data;
}

Map<String, dynamic> courseDetailDataDataToJson(CourseDetailDataData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['classId'] = entity.classId;
	data['orderId'] = entity.orderId;
	data['buyTime'] = entity.buyTime;
	data['userId'] = entity.userId;
	data['orderDePrice'] = entity.orderDePrice;
	data['BeginDate'] = entity.beginDate;
	data['EndTime'] = entity.endTime;
	data['payTime'] = entity.payTime;
	data['orderNum'] = entity.orderNum;
	data['isExpired'] = entity.isExpired;
	data['lastTime'] = entity.lastTime;
	data['lessonId'] = entity.lessonId;
	data['completeTime'] = entity.completeTime;
	data['totalTime'] = entity.totalTime;
	data['order'] = entity.order;
	data['isRecord'] = entity.isRecord;
	data['title'] = entity.title;
	data['cover'] = entity.cover;
	data['rid'] = entity.rid;
	data['teachers'] = entity.teachers;
	data['lessonCount'] = entity.lessonCount;
	data['VideoTypes'] = entity.videoTypes;
	data['NetClassCategoryId'] = entity.netClassCategoryId;
	data['actualPrice'] = entity.actualPrice;
	data['gradeCate'] = entity.gradeCate;
	if (entity.teacherImg != null) {
		data['teacherImg'] =  entity.teacherImg.map((v) => v.toJson()).toList();
	}
	data['oneToOne'] = entity.oneToOne;
	data['newTeacherOneToOne'] = entity.newTeacherOneToOne;
	data['renew'] = entity.renew;
	data['protocolUrl'] = entity.protocolUrl;
	data['totalSchedule'] = entity.totalSchedule;
	data['isStart'] = entity.isStart;
	data['liveEnd'] = entity.liveEnd;
	data['todayLive'] = entity.todayLive;
	data['classType'] = entity.classType;
	data['isTop'] = entity.isTop;
	data['living'] = entity.living;
	data['isDone'] = entity.isDone;
	data['schedule'] = entity.schedule;
	data['descString'] = entity.descString;
	data['liveStart'] = entity.liveStart;
	return data;
}

courseDetailDataDataTeacherImgFromJson(CourseDetailDataDataTeacherImg data, Map<String, dynamic> json) {
	if (json['teacherName'] != null) {
		data.teacherName = json['teacherName']?.toString();
	}
	if (json['roundPhoto'] != null) {
		data.roundPhoto = json['roundPhoto']?.toString();
	}
	return data;
}

Map<String, dynamic> courseDetailDataDataTeacherImgToJson(CourseDetailDataDataTeacherImg entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['teacherName'] = entity.teacherName;
	data['roundPhoto'] = entity.roundPhoto;
	return data;
}