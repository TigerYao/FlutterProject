import 'package:htonline/generated/json/base/json_convert_content.dart';

class QuestionTypeEntity with JsonConvert<QuestionTypeEntity> {
	List<QuestionTypeData> data;
	int code;
}

class QuestionTypeData with JsonConvert<QuestionTypeData> {
	int id;
	String name;
	int sort;
	int pid;
}
