import 'package:htonline/generated/json/base/json_convert_content.dart';
import 'package:htonline/generated/json/base/json_filed.dart';
import 'package:htonline/model/catory_listentity_entity.dart';

class SearchInfoEntity with JsonConvert<SearchInfoEntity> {
	SearchInfoData data;
	int code;
}

class SearchInfoData with JsonConvert<SearchInfoData> {
	@JSONField(name: "current_page")
	int currentPage;
	List<SearchInfoDataData> data;
	int from;
	@JSONField(name: "last_page")
	int lastPage;
	@JSONField(name: "next_page_url")
	dynamic nextPageUrl;
	String path;
	@JSONField(name: "per_page")
	int perPage;
	@JSONField(name: "prev_page_url")
	dynamic prevPageUrl;
	int to;
	int total;
}

class SearchInfoDataData extends CatoryListentityDataData {
	String title;
	String teacherDesc;
	String brief;
	String id;
	String price;
	int createAt;
	int status;
	@JSONField(name: "NetClassCategoryId")
	String netClassCategoryId;
	String img;
	String limit;
	String timeLength;
	bool isTermined;
	String terminedDesc;
	bool isSuit;
	bool secondKill;
	String videoType;
	String redEnvelopeId;
	String courseType;
	String timestamp;
	int saleNum;
	String cateId;
	String classId;
	String titles;
	@JSONField(name: "_id")
	String sId;
	SearchInfoDataDataHighlight highlight;
	bool isCollect;
	bool isNew;
	List<dynamic> activeTag;
	int collageActiveId;
	int count;
	int limitType;
	int saleStart;
	int saleEnd;
	bool isRushOut;
	int stopTimeStamp;
	int startTimeStamp;
	bool isSaleOut;
}

class SearchInfoDataDataHighlight with JsonConvert<SearchInfoDataDataHighlight> {
	List<String> title;
}

class SearchInfoDataDataTeacher extends CatoryListentityDataDataTeacher {
	String teacherId;
	String teacherName;
	String roundPhoto;
}
