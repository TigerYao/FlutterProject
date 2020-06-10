 import 'dart:core';

class ArenaConstant {

  static final int ADMINISTRATIVE_APTITUDE_TEST = 1;       // 行测
  static final int ESSAY_TESTS_FOR_CIVIL_SERVANTS = 14;    // 申论


   static const int QUESTION_TYPE_SINGLE = 99;              // 单选：99
   static const int QUESTION_TYPE_MULTIPLE = 100;           // 多选：100
   static const int QUESTION_TYPE_UNDEFINE = 101;           // 不定项：101
   static const int QUESTION_TYPE_JUDGEMENT = 109;          // 对错题：109
   static const int QUESTION_TYPE_COMPLEX = 105;                 // 现在没有105
   static const int QUESTION_TYPE_SUBJECTIVE = 106;         // (不可作答题型)

   static const int QUESTION_TYPE_DOUBLE = 98;              // 双选题
   static const int QUESTION_TYPE_FILL_BLANKS = 123;        // 填空题
   static const int QUESTION_TYPE_FILL_BLANKS_IMG = 127;    // 表格填空题

   static const int QUESTION_TYPE_CONNECT_LINE = 124;       // 连线
   static const int QUESTION_TYPE_M_N = 125;                // M选N
   static const int QUESTION_TYPE_MATCH = 126;              // 匹配题



  static const int CIVIL_SERVANT = 1;                  // 公务员
  static const int PUBLIC_INSTITUTION = 3;             // 事业单位
  static const int TEACHER_T = 200100045;              // 教师招聘
  static const int TEACHER_NURSERY = 200100070;        // 教师资格证-幼教
  static const int TEACHER_PRIMARY = 200100048;        // 教师资格证-小学
  static const int TEACHER_MIDDLE = 200100053;         // 教师资格证-中学
  static const int PUBLIC_SECURITY = 200100047;        // 招警考试
  static const int SELECTION_T = 41;                   // 公遴选
  static const int MILITARY_REVOLUTION = 42;           // 军转
  static const int MILITARY_CIVILIAN = 200100060;      // 军队文职
  static const int SUPPORTS_ASSISTANCE = 200100064;    // 三支一扶
  static const int STATE_GRID = 43;                    // 国家电网
  static const int MEDICAL_TREATMENT_T = 200100000;    // 医疗
  static const int FINANCIAL_T = 200100002;            // 金融
  static const int GRADUATE = 100100633;               // 考研
  static const int OTHER_T = 200100046;                // 其他
   /**
    * 启动做题页面
    *
    * @param context   Context
    * @param arguments JsonObject对象，根据不同题型加入不同属性，然后toString()
    * 必添加字段action，常规做题为0，不做题直接看答题报告和解析为1(直接看解析需要增加practiseId属性，即练习/答题卡id)
    * 必添加字段freshness，新做一份题为0，继续做题为1(继续做题需要增加practiseId属性，即练习/答题卡id)
    * 专项练习  type 2|pointId 知识点id|size 题量
    * 真题演练  type 3|id 真题试卷id
    * 错题训练  type 6|pointId 知识点id|size 题量
    * 每日训练  type 7|pointId 知识点id
    * 模考估分  type 9|id 模考试卷id
    * 单题解析和错题解析，添加2个字段：
    * howToAnalyze——单题解析值为1，错题集解析查看值为2，收藏夹解析查看为3
    * exerciseIdList——List形式，把单题或者所有错题的题目id添加到List<Integer>中，再转化成JsonArray，添加到JsonObject对象中
    * JsonArray jsonArray = (JsonArray) new Gson().toJsonTree(idsList, new TypeToken<List<Integer>>(){}.getType());
    * jsonObject.add("exerciseIdList", jsonArray);
    */
   static const int EXAM_ENTER_FORM_TYPE_AI_PRACTICE = 1;                   // 智能刷题 artificial intelligence ai 智能练习  随手练
   static const int EXAM_ENTER_FORM_TYPE_ZHUANXIANG_LIANXI = 2;             // 专项练习
   static const int EXAM_ENTER_FORM_TYPE_ZHENTI_YANLIAN = 3;                // 真题演练
   static const int EXAM_ENTER_FORM_TYPE_AI_SIMULATION = 4;                 // artificial intelligence ai 智能模考
   static const int EXAM_ENTER_FORM_TYPE_JINGJI_DATI = 5;                   // 竞技答题记录
   static const int EXAM_ENTER_FORM_TYPE_CUOTI_LIANXI = 6;                  // 错题重练
   static const int EXAM_ENTER_FORM_TYPE_MEIRI_TEXUN = 7;                   // 每日特训
   static const int EXAM_ENTER_FORM_TYPE_COLLECT_PRACTICE = 8;              // 收藏练习
   static const int EXAM_ENTER_FORM_TYPE_MOKAOGUFEN = 9;                    // 专项模考
   static const int EXAM_ENTER_FORM_TYPE_ZC_LIANXI = 10;                    // 砖超联赛
   static const int EXAM_ENTER_FORM_TYPE_WEIXIN_LIANXI = 11;                // 微信练习
   static const int EXAM_ENTER_FORM_TYPE_SIMULATION_CONTEST = 12;           // 答题卡类型	模考大赛
   static const int EXAM_ENTER_FORM_TYPE_ACCURATE_GUFEN = 13;               // 精准估分
   static const int EXAM_ENTER_FORM_TYPE_PAST_MOKAO = 14;                   // 往期模考
   static const int EXAM_ENTER_FORM_TYPE_COURSE_EXERICE = 15;               // 课后练习
   static const int EXAM_ENTER_FORM_TYPE_SMALL_MATCH = 17;                  // 小模考
   static const int EXAM_ENTER_FORM_TYPE_STAGE_TEST = 18;                   // 阶段性测试（课程）
   static const int EXAM_ENTER_FORM_TYPE_JINGJICHANG = 20;                  // 竞技场（再也不用了）
   static const int EXAM_ENTER_FORM_TYPE_ERROR_EXPORT = 20;                 // 错题导出
   static const int EXAM_ENTER_FORM_TYPE_RECITE_ZHUANXIANG_LIANXI = 21;     // 专项练习（背题模式）
   static const int EXAM_ENTER_FORM_TYPE_RECITE_CUOTI_LIANXI = 22;          // 错题重练（背题模式）
   static const int EXAM_ENTER_FORM_TYPE_COLLECTION_EXPORT = 23;            // 收藏导出

   static const int EXAM_ENTER_FORM_TYPE_RECITE_PRE = 50;                   // 背题模式 先答题状态

   // 启动 页面
   static const int START_ATHLETIC_ARENA = 2001;                            // 竞技赛场
   static const int START_EVALUATE_REPORT = 2002;                           // 评估报告
   static const int START_PAGER_RECORD = 2003;                              // 答题记录
   static const int START_PAGER_FAVORITE_COLLECT = 2004;                    // 收藏夹
   static const int START_PAGER_DOWNLOAD_PAPER = 2005;                      // 行测试卷下载
   static const int START_NTEGRATED_APPLICATION = 2006;                     // 综合应用
   static const int START_MY_NOTE = 2007;                                   // 我的笔记

   static const int EXAM_ENTER_FORM_TYPE_JIEXI_ALL = 100;                   // 全部解析，默认情况
   static const int EXAM_ENTER_FORM_TYPE_JIEXI_SINGLE = 101;                // 单题解析
   static const int EXAM_ENTER_FORM_TYPE_JIEXI_WRONG = 102;                 // 错题解析
   static const int EXAM_ENTER_FORM_TYPE_JIEXI_FAVERATE = 103;              // 收藏解析
   static const int EXAM_ENTER_FORM_TYPE_JIEXI_NOTE = 104;                  // 笔记解析

   static const int EXAM_ENTER_FORM_TYPE_RECITE_AFTER = 120;                // 背题模式 后查看解析状态

   static const int EXAM_ENTER_FORM_TYPE_JIEXI_PREVIEW = 150;               // 教师预览模式
   static const int EXAM_ENTER_FORM_TYPE_JIEXI_SUBJECTIVE = 160;            // 全是主观题的试卷点击进去，进行预览（综合应用，共遴选会有这情况）

   static const int DEFAULT_PAGE_SIZE = 10;

   static const int ARENA_TYPE_INTELLIGENT = 1;             // 智能推送
   static const int ARENA_TYPE_DEFINED_KNOWLEDGE = 2;
   static const int ARENA_MODULE_CHANGSHI_PANDUAN = 392;    // 常识判断
   static const int ARENA_MODULE_YANYU_LIJIE = 435;         // 言语理解
   static const int ARENA_MODULE_SHULIANG_GUANXI = 482;     // 数量关系
   static const int ARENA_MODULE_PANDUAN_TUILI = 642;       // 判断推理
   static const int ARENA_MODULE_ZILIAO_FENXI = 754;        // 资料分析

   static const int ARENA_ROOM_STATE_BUILD = 1;
   static const int ARENA_ROOM_STATE_PROCESSING = 2;
   static const int ARENA_ROOM_STATE_FINISH = 3;

   static const String ACTION_USER_PROGRESS_UPDATE = "com.athletic.progress";
   static const String ACTION_NOTIFY_USER_CHECK_RESULT = "com.athletic.result";
   static const String ACTION_MINE_PROGRESS_UPDATE = "com.athletic.progress.mine";

   // 获取img标签正则
   static const String IMG_REGULAR = "<img.*src=(.*?)[^>]*?>";
   // 获取src路径的正则
   static const String SRC_REGULAR = "http:\"?(.*?)(\"|>|\\s+)";

    static const List<int> size_14 = [14, 12, 16];
    static const List<int> size_15 = [15, 13, 17];
    static const List<int> size_16 = [16, 14, 18];
    static const List<int> size_18 = [17, 15, 19];

   static  const String TINKER_DOWNLOAD_START = "TinkerDownloadStart";
   static  const String TINKER_DOWNLOAD_SUCCESS = "TinkerDownloadSuccess";
   static  const String TINKER_DOWNLOAD_FAIL = "TinkerDownloadFail";
   static  const String TINKER_INSTALL_START = "TinkerInstallStart";
   static  const String TINKER_INSTALL_SUCCESS = "TinkerInstallSuccess";
   static  const String TINKER_INSTALL_FAIL = "TinkerInstallFAIL";

   String getRequestTypeName(int requestType) {
     switch (requestType) {
       case EXAM_ENTER_FORM_TYPE_AI_PRACTICE:
         return "智能刷题";
       case EXAM_ENTER_FORM_TYPE_ZHUANXIANG_LIANXI:
         return "专项练习";
       case EXAM_ENTER_FORM_TYPE_ZHENTI_YANLIAN:
         return "真题演练";
       case EXAM_ENTER_FORM_TYPE_CUOTI_LIANXI:
         return "错题重练";
       case EXAM_ENTER_FORM_TYPE_MEIRI_TEXUN:
         return "每日特训";
       case EXAM_ENTER_FORM_TYPE_COLLECT_PRACTICE:
         return "收藏";
       case EXAM_ENTER_FORM_TYPE_MOKAOGUFEN:
         return "专项模考";
       case EXAM_ENTER_FORM_TYPE_SIMULATION_CONTEST:
         return "模考大赛";
       case EXAM_ENTER_FORM_TYPE_ACCURATE_GUFEN:
         return "精准估分";
       case EXAM_ENTER_FORM_TYPE_PAST_MOKAO:
         return "往期模考";
       case EXAM_ENTER_FORM_TYPE_COURSE_EXERICE:
         return "课后作业";
       case EXAM_ENTER_FORM_TYPE_SMALL_MATCH:
         return "小模考";
       case EXAM_ENTER_FORM_TYPE_STAGE_TEST:
         return "阶段测评";
       case EXAM_ENTER_FORM_TYPE_ERROR_EXPORT:
         return "错题下载";
       case EXAM_ENTER_FORM_TYPE_RECITE_ZHUANXIANG_LIANXI:
         return "专项练习（背题模式）";
       case EXAM_ENTER_FORM_TYPE_RECITE_CUOTI_LIANXI:
         return "错题重练（背题模式）";
       case EXAM_ENTER_FORM_TYPE_COLLECTION_EXPORT:
         return "收藏下载";
       case EXAM_ENTER_FORM_TYPE_JIEXI_SINGLE:
         return "单题解析";
       case EXAM_ENTER_FORM_TYPE_JIEXI_FAVERATE:
         return "收藏解析";
       case EXAM_ENTER_FORM_TYPE_JIEXI_NOTE:
         return "笔记解析";
       default:
         return "";
     }
   }
 }

