import 'package:htonline/model/essay_question_entity.dart';

essayQuestionEntityFromJson(EssayQuestionEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new EssayQuestionData().fromJson(json['data']);
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> essayQuestionEntityToJson(EssayQuestionEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	data['code'] = entity.code;
	return data;
}

essayQuestionDataFromJson(EssayQuestionData data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = new List<EssayQuestionDataResult>();
		(json['result'] as List).forEach((v) {
			data.result.add(new EssayQuestionDataResult().fromJson(v));
		});
	}
	if (json['next'] != null) {
		data.next = json['next']?.toInt();
	}
	if (json['total'] != null) {
		data.total = json['total']?.toInt();
	}
	if (json['totalPage'] != null) {
		data.totalPage = json['totalPage']?.toInt();
	}
	return data;
}

Map<String, dynamic> essayQuestionDataToJson(EssayQuestionData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.result != null) {
		data['result'] =  entity.result.map((v) => v.toJson()).toList();
	}
	data['next'] = entity.next;
	data['total'] = entity.total;
	data['totalPage'] = entity.totalPage;
	return data;
}

essayQuestionDataResultFromJson(EssayQuestionDataResult data, Map<String, dynamic> json) {
	if (json['showMsg'] != null) {
		data.showMsg = json['showMsg']?.toString();
	}
	if (json['similarId'] != null) {
		data.similarId = json['similarId']?.toInt();
	}
	if (json['bizStatus'] != null) {
		data.bizStatus = json['bizStatus']?.toInt();
	}
	if (json['correctTimes'] != null) {
		data.correctTimes = json['correctTimes']?.toInt();
	}
	if (json['essayQuestionBelongPaperVOList'] != null) {
		data.essayQuestionBelongPaperVOList = new List<EssayQuestionDataResultEssayQuestionBelongPaperVOList>();
		(json['essayQuestionBelongPaperVOList'] as List).forEach((v) {
			data.essayQuestionBelongPaperVOList.add(new EssayQuestionDataResultEssayQuestionBelongPaperVOList().fromJson(v));
		});
	}
	if (json['correctSum'] != null) {
		data.correctSum = json['correctSum']?.toInt();
	}
	if (json['correctNum'] != null) {
		data.correctNum = json['correctNum']?.toInt();
	}
	if (json['videoAnalyzeFlag'] != null) {
		data.videoAnalyzeFlag = json['videoAnalyzeFlag'];
	}
	if (json['manualNum'] != null) {
		data.manualNum = json['manualNum']?.toInt();
	}
	if (json['manualSum'] != null) {
		data.manualSum = json['manualSum']?.toInt();
	}
	if (json['questionType'] != null) {
		data.questionType = json['questionType']?.toInt();
	}
	if (json['convertCount'] != null) {
		data.convertCount = json['convertCount']?.toInt();
	}
	return data;
}

Map<String, dynamic> essayQuestionDataResultToJson(EssayQuestionDataResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['showMsg'] = entity.showMsg;
	data['similarId'] = entity.similarId;
	data['bizStatus'] = entity.bizStatus;
	data['correctTimes'] = entity.correctTimes;
	if (entity.essayQuestionBelongPaperVOList != null) {
		data['essayQuestionBelongPaperVOList'] =  entity.essayQuestionBelongPaperVOList.map((v) => v.toJson()).toList();
	}
	data['correctSum'] = entity.correctSum;
	data['correctNum'] = entity.correctNum;
	data['videoAnalyzeFlag'] = entity.videoAnalyzeFlag;
	data['manualNum'] = entity.manualNum;
	data['manualSum'] = entity.manualSum;
	data['questionType'] = entity.questionType;
	data['convertCount'] = entity.convertCount;
	return data;
}

essayQuestionDataResultEssayQuestionBelongPaperVOListFromJson(EssayQuestionDataResultEssayQuestionBelongPaperVOList data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['areaId'] != null) {
		data.areaId = json['areaId']?.toInt();
	}
	if (json['areaName'] != null) {
		data.areaName = json['areaName']?.toString();
	}
	if (json['bizStatus'] != null) {
		data.bizStatus = json['bizStatus']?.toInt();
	}
	if (json['questionBaseId'] != null) {
		data.questionBaseId = json['questionBaseId']?.toInt();
	}
	if (json['questionDetailId'] != null) {
		data.questionDetailId = json['questionDetailId']?.toInt();
	}
	if (json['videoId'] != null) {
		data.videoId = json['videoId']?.toInt();
	}
	if (json['correctNum'] != null) {
		data.correctNum = json['correctNum']?.toInt();
	}
	if (json['manualNum'] != null) {
		data.manualNum = json['manualNum']?.toInt();
	}
	if (json['manualRecentStatus'] != null) {
		data.manualRecentStatus = json['manualRecentStatus']?.toInt();
	}
	if (json['recentStatus'] != null) {
		data.recentStatus = json['recentStatus']?.toInt();
	}
	return data;
}

Map<String, dynamic> essayQuestionDataResultEssayQuestionBelongPaperVOListToJson(EssayQuestionDataResultEssayQuestionBelongPaperVOList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['areaId'] = entity.areaId;
	data['areaName'] = entity.areaName;
	data['bizStatus'] = entity.bizStatus;
	data['questionBaseId'] = entity.questionBaseId;
	data['questionDetailId'] = entity.questionDetailId;
	data['videoId'] = entity.videoId;
	data['correctNum'] = entity.correctNum;
	data['manualNum'] = entity.manualNum;
	data['manualRecentStatus'] = entity.manualRecentStatus;
	data['recentStatus'] = entity.recentStatus;
	return data;
}