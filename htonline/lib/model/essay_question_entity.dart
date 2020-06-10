import 'package:htonline/generated/json/base/json_convert_content.dart';

class EssayQuestionEntity with JsonConvert<EssayQuestionEntity> {
	EssayQuestionData data;
	int code;
}

class EssayQuestionData with JsonConvert<EssayQuestionData> {
	List<EssayQuestionDataResult> result;
	int next;
	int total;
	int totalPage;
}

class EssayQuestionDataResult with JsonConvert<EssayQuestionDataResult> {
	String showMsg;
	int similarId;
	int bizStatus;
	int correctTimes;
	List<EssayQuestionDataResultEssayQuestionBelongPaperVOList> essayQuestionBelongPaperVOList;
	int correctSum;
	int correctNum;
	bool videoAnalyzeFlag;
	int manualNum;
	int manualSum;
	int questionType;
	int convertCount;
}

class EssayQuestionDataResultEssayQuestionBelongPaperVOList with JsonConvert<EssayQuestionDataResultEssayQuestionBelongPaperVOList> {
	int id;
	int areaId;
	String areaName;
	int bizStatus;
	int questionBaseId;
	int questionDetailId;
	int videoId;
	int correctNum;
	int manualNum;
	int manualRecentStatus;
	int recentStatus;
}
