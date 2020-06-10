import 'package:htonline/model/search_keywords_bean_entity.dart';

searchKeywordsBeanEntityFromJson(SearchKeywordsBeanEntity data, Map<String, dynamic> json) {
	if (json['hotwords'] != null) {
		data.hotwords = json['hotwords']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['mywords'] != null) {
		data.mywords = json['mywords']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	return data;
}

Map<String, dynamic> searchKeywordsBeanEntityToJson(SearchKeywordsBeanEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['hotwords'] = entity.hotwords;
	data['mywords'] = entity.mywords;
	return data;
}