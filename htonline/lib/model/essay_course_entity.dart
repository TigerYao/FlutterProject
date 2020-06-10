import 'package:htonline/generated/json/base/json_convert_content.dart';

class EssayCourseEntity with JsonConvert<EssayCourseEntity> {
	List<EssayCourseData> data;
	int code;
}

class EssayCourseData with JsonConvert<EssayCourseData> {
	int id;
	String name;
	int sort;
	int pid;
}
