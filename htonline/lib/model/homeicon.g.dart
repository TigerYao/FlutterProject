// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homeicon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeIconBean _$HomeIconBeanFromJson(Map<String, dynamic> json) {
  return HomeIconBean()
    ..name = json['name'] as String
    ..sort = json['sort'] as int
    ..type = json['type'] as String
    ..url = json['url'] as String
    ..requestType = json['requestType'] as int
    ..icon = json['icon'] as String
    ..tipNum = json['tipNum'] as int;
}

Map<String, dynamic> _$HomeIconBeanToJson(HomeIconBean instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sort': instance.sort,
      'type': instance.type,
      'url': instance.url,
      'requestType': instance.requestType,
      'icon': instance.icon,
      'tipNum': instance.tipNum,
    };

GenericHomeIcons _$GenericHomeIconsFromJson(Map<String, dynamic> json) {
  return GenericHomeIcons(
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : HomeIconBean.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as int,
  );
}

Map<String, dynamic> _$GenericHomeIconsToJson(GenericHomeIcons instance) =>
    <String, dynamic>{
      'data': instance.data,
      'code': instance.code,
    };
