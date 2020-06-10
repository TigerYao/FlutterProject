import 'package:htonline/model/home_doc_entity.dart';

homeDocEntityFromJson(HomeDocEntity data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = new HomeDocData().fromJson(json['data']);
	}
	if (json['code'] != null) {
		data.code = json['code']?.toInt();
	}
	return data;
}

Map<String, dynamic> homeDocEntityToJson(HomeDocEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.data != null) {
		data['data'] = entity.data.toJson();
	}
	data['code'] = entity.code;
	return data;
}

homeDocDataFromJson(HomeDocData data, Map<String, dynamic> json) {
	if (json['homeOperateDoc'] != null) {
		data.homeOperateDoc = new HomeDocDataHomeOperateDoc().fromJson(json['homeOperateDoc']);
	}
	if (json['customizeDoc'] != null) {
		data.customizeDoc = new HomeDocDataCustomizeDoc().fromJson(json['customizeDoc']);
	}
	if (json['messageList'] != null) {
		data.messageList = new List<HomeDocDataMessageList>();
		(json['messageList'] as List).forEach((v) {
			data.messageList.add(new HomeDocDataMessageList().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> homeDocDataToJson(HomeDocData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.homeOperateDoc != null) {
		data['homeOperateDoc'] = entity.homeOperateDoc.toJson();
	}
	if (entity.customizeDoc != null) {
		data['customizeDoc'] = entity.customizeDoc.toJson();
	}
	if (entity.messageList != null) {
		data['messageList'] =  entity.messageList.map((v) => v.toJson()).toList();
	}
	return data;
}

homeDocDataHomeOperateDocFromJson(HomeDocDataHomeOperateDoc data, Map<String, dynamic> json) {
	if (json['document'] != null) {
		data.document = json['document'];
	}
	if (json['onLineTime'] != null) {
		data.onLineTime = json['onLineTime'];
	}
	if (json['offLineTime'] != null) {
		data.offLineTime = json['offLineTime'];
	}
	if (json['defaultDoc'] != null) {
		data.defaultDoc = json['defaultDoc']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDocDataHomeOperateDocToJson(HomeDocDataHomeOperateDoc entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['document'] = entity.document;
	data['onLineTime'] = entity.onLineTime;
	data['offLineTime'] = entity.offLineTime;
	data['defaultDoc'] = entity.defaultDoc;
	return data;
}

homeDocDataCustomizeDocFromJson(HomeDocDataCustomizeDoc data, Map<String, dynamic> json) {
	if (json['document'] != null) {
		data.document = json['document'];
	}
	if (json['onLineTime'] != null) {
		data.onLineTime = json['onLineTime'];
	}
	if (json['offLineTime'] != null) {
		data.offLineTime = json['offLineTime'];
	}
	if (json['defaultDoc'] != null) {
		data.defaultDoc = json['defaultDoc']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDocDataCustomizeDocToJson(HomeDocDataCustomizeDoc entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['document'] = entity.document;
	data['onLineTime'] = entity.onLineTime;
	data['offLineTime'] = entity.offLineTime;
	data['defaultDoc'] = entity.defaultDoc;
	return data;
}

homeDocDataMessageListFromJson(HomeDocDataMessageList data, Map<String, dynamic> json) {
	if (json['target'] != null) {
		data.target = json['target']?.toString();
	}
	if (json['params'] != null) {
		data.params = new HomeDocDataMessageListParams().fromJson(json['params']);
	}
	if (json['onLineTime'] != null) {
		data.onLineTime = json['onLineTime']?.toInt();
	}
	if (json['offLineTime'] != null) {
		data.offLineTime = json['offLineTime']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toInt();
	}
	if (json['needLogin'] != null) {
		data.needLogin = json['needLogin']?.toInt();
	}
	return data;
}

Map<String, dynamic> homeDocDataMessageListToJson(HomeDocDataMessageList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['target'] = entity.target;
	if (entity.params != null) {
		data['params'] = entity.params.toJson();
	}
	data['onLineTime'] = entity.onLineTime;
	data['offLineTime'] = entity.offLineTime;
	data['type'] = entity.type;
	data['needLogin'] = entity.needLogin;
	return data;
}

homeDocDataMessageListParamsFromJson(HomeDocDataMessageListParams data, Map<String, dynamic> json) {
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['cateId'] != null) {
		data.cateId = json['cateId']?.toInt();
	}
	if (json['subject'] != null) {
		data.subject = json['subject']?.toInt();
	}
	if (json['needLogin'] != null) {
		data.needLogin = json['needLogin']?.toInt();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['isNew'] != null) {
		data.isNew = json['isNew']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['padImageUrl'] != null) {
		data.padImageUrl = json['padImageUrl']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDocDataMessageListParamsToJson(HomeDocDataMessageListParams entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['image'] = entity.image;
	data['cateId'] = entity.cateId;
	data['subject'] = entity.subject;
	data['needLogin'] = entity.needLogin;
	data['id'] = entity.id;
	data['isNew'] = entity.isNew;
	data['title'] = entity.title;
	data['padImageUrl'] = entity.padImageUrl;
	return data;
}