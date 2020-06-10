import 'package:json_annotation/json_annotation.dart';

part 'homeicon.g.dart';

@JsonSerializable()
class HomeIconBean {
  String name; // 名称 ('模考大赛','精准估分','真题演练','错题重练','专项模考'...)
  int sort; // 排序
  String type; // 类型 ('MKDS','JZGF','ZTYL','CTCL','ZXMK'...)
  String url; // 图标url

  int requestType; // 类型，本地类型 ArenaConstant
  String icon; // 图标，本地资源 R.mipmap...

  int tipNum;

  HomeIconBean(); // 角标

  factory HomeIconBean.fromJson(Map<String, dynamic> json) =>
      _$HomeIconBeanFromJson(json);

  Map<String, dynamic> toJson() => _$HomeIconBeanToJson(this);
}

@JsonSerializable()
class GenericHomeIcons {
  List<HomeIconBean> data;
  int code;

  GenericHomeIcons({this.data, this.code});

  factory GenericHomeIcons.fromJson(Map<String, dynamic> json) =>
      _$GenericHomeIconsFromJson(json);

  Map<String, dynamic> toJson() => _$GenericHomeIconsToJson(this);
}
