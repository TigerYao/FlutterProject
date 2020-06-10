import 'package:htonline/generated/json/base/json_convert_content.dart';

class CatoryListentityEntity with JsonConvert<CatoryListentityEntity> {
	List<CatoryListentityData> data;
	int code;
}

class CatoryListentityData with JsonConvert<CatoryListentityData> {
	String cateId;
	String title;
	int order;
	String img;
	int number;
	bool more;
	int typeId;
	List<CatoryListentityDataData> data;
}

class CatoryListentityDataData with JsonConvert<CatoryListentityDataData> {
	String classId;
	String title;
	String cateId;
	String teacherDesc;
	String actualPrice;
	String price;
	String img;
	String timeLength;
	bool isTermined;
	String terminedDesc;
	bool isSuit;
	bool secondKill;
	String brief;
	String videoType;
	String redEnvelopeId;
	String courseType;
	String classType;
	bool isCollect;
	String limit;
	bool isNew;
	String id;
	List<dynamic> activeTag;
	int collageActiveId;
	int count;
	List<CatoryListentityDataDataTeacher> teacher;
	int limitType;
	bool isRushOut;
	bool isSaleOut;
	String collectTag;
	String collectBrief;
	int collectId;
}

class CatoryListentityDataDataTeacher with JsonConvert<CatoryListentityDataDataTeacher> {
	String teacherId;
	String teacherName;
	String roundPhoto;
}
