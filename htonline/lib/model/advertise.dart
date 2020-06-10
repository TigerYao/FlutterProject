import 'package:json_annotation/json_annotation.dart';
part 'advertise.g.dart';
@JsonSerializable()
class AdvertiseConfig{
  String target;
  AdvertiseItem params;

  AdvertiseConfig({this.target, this.params}); //图片信息

  factory AdvertiseConfig.fromJson(Map<String, dynamic> json) => _$AdvertiseConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertiseConfigToJson(this);
}

@JsonSerializable()
class AdvertiseItem {
  int id;
  String title;
  String shortTitle;
  String image;
  String url; // 指定链接
  String padImageUrl; // 表示平板对应的广告图
  int rid;
  String text;
  int hide;
  int subject;
  int catgory;
  int type;
  int paperId;
  int areaId;
  int area;
  int width;
  int height;
  String content;
  String areaName;
  int isNew; // 为1，表示合集课程，跳合集课程用
  int collageActiveId; //拼团Id

  // int needLogin;//判断是否要登录
  // 跳转微信小程序
  String appId; // 注册的本appId
  String appName; // 小程序原始id
  String path; // 跳转路径

  // 自己添加字段，添加点击来源，用于神策向前来源
  String from;
  int cateId; //跳转课程列表定位到具体科目

  factory AdvertiseItem.fromJson(Map<String, dynamic> json) => _$AdvertiseItemFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertiseItemToJson(this);

  AdvertiseItem();
}

@JsonSerializable()
class GenericCollection {

  List<AdvertiseConfig> data;
  int code;

  GenericCollection({this.data, this.code});
  factory GenericCollection.fromJson(Map<String, dynamic> json) => _$GenericCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$GenericCollectionToJson(this);
}
