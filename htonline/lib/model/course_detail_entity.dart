import 'package:htonline/generated/json/base/json_convert_content.dart';
import 'package:htonline/generated/json/base/json_filed.dart';

class CourseDetailEntity with JsonConvert<CourseDetailEntity> {
	CourseDetailData data;
	int code;
}

class CourseDetailData with JsonConvert<CourseDetailData> {
	List<CourseDetailDataData> data;
	int total;
	@JSONField(name: "current_page")
	int currentPage;
	@JSONField(name: "per_page")
	int perPage;
	@JSONField(name: "last_page")
	int lastPage;
	int topNumber;
}

class CourseDetailDataData with JsonConvert<CourseDetailDataData> {
	String classId;
	String orderId;
	String buyTime;
	String userId;
	int orderDePrice;
	@JSONField(name: "BeginDate")
	String beginDate;
	@JSONField(name: "EndTime")
	String endTime;
	String payTime;
	String orderNum;
	bool isExpired;
	String lastTime;
	int lessonId;
	int completeTime;
	int totalTime;
	int order;
	bool isRecord;
	String title;
	String cover;
	int rid;
	String teachers;
	int lessonCount;
	@JSONField(name: "VideoTypes")
	String videoTypes;
	@JSONField(name: "NetClassCategoryId")
	int netClassCategoryId;
	int actualPrice;
	int gradeCate;
	List<CourseDetailDataDataTeacherImg> teacherImg;
	int oneToOne;
	int newTeacherOneToOne;
	int renew;
	String protocolUrl;
	int totalSchedule;
	bool isStart;
	bool liveEnd;
	int todayLive;
	int classType;
	bool isTop;
	bool living;
	bool isDone;
	int schedule;
	String descString;
	int liveStart;
}

class CourseDetailDataDataTeacherImg with JsonConvert<CourseDetailDataDataTeacherImg> {
	String teacherName;
	String roundPhoto;
}
