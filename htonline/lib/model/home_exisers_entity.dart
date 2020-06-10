import 'package:htonline/generated/json/base/json_convert_content.dart';

class HomeExisersEntity with JsonConvert<HomeExisersEntity> {
	List<HomeExisersData> data;
	int code;
}

class HomeExisersData with JsonConvert<HomeExisersData> {
	int id;
	String name;
	int qnum;
	int rnum;
	int wnum;
	int unum;
	int times;
	int speed;
	int level;
	double accuracy;
	List<HomeExisersData> children;
	int unfinishedPracticeId;
	int userQnum;
	bool show = false;
}
