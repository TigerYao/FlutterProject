import 'package:htonline/generated/json/base/json_convert_content.dart';

class CourseInfoEntity with JsonConvert<CourseInfoEntity> {
	List<CourseInfoData> data;
	int code;
}

class CourseInfoData with JsonConvert<CourseInfoData> {
	String name;
	int cateId;
	bool checked;
	bool interview;
	int cateKey;
}
