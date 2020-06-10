import 'package:htonline/generated/json/base/json_convert_content.dart';
class HomeDocEntity with JsonConvert<HomeDocEntity> {
	HomeDocData data;
	int code;
}

class HomeDocData with JsonConvert<HomeDocData> {
	HomeDocDataHomeOperateDoc homeOperateDoc;
	HomeDocDataCustomizeDoc customizeDoc;
	List<HomeDocDataMessageList> messageList;
}

class HomeDocDataHomeOperateDoc with JsonConvert<HomeDocDataHomeOperateDoc> {
	dynamic document;
	dynamic onLineTime;
	dynamic offLineTime;
	String defaultDoc;
}

class HomeDocDataCustomizeDoc with JsonConvert<HomeDocDataCustomizeDoc> {
	dynamic document;
	dynamic onLineTime;
	dynamic offLineTime;
	String defaultDoc;
}

class HomeDocDataMessageList with JsonConvert<HomeDocDataMessageList> {
	String target;
	HomeDocDataMessageListParams params;
	int onLineTime;
	int offLineTime;
	int type;
	int needLogin;
}

class HomeDocDataMessageListParams with JsonConvert<HomeDocDataMessageListParams> {
	String image;
	int cateId;
	int subject;
	int needLogin;
	int id;
	int isNew;
	String title;
	String padImageUrl;
}
