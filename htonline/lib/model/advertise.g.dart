// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvertiseConfig _$AdvertiseConfigFromJson(Map<String, dynamic> json) {
  return AdvertiseConfig(
    target: json['target'] as String,
    params: json['params'] == null
        ? null
        : AdvertiseItem.fromJson(json['params'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AdvertiseConfigToJson(AdvertiseConfig instance) =>
    <String, dynamic>{
      'target': instance.target,
      'params': instance.params,
    };

AdvertiseItem _$AdvertiseItemFromJson(Map<String, dynamic> json) {
  return AdvertiseItem()
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..shortTitle = json['shortTitle'] as String
    ..image = json['image'] as String
    ..url = json['url'] as String
    ..padImageUrl = json['padImageUrl'] as String
    ..rid = json['rid'] as int
    ..text = json['text'] as String
    ..hide = json['hide'] as int
    ..subject = json['subject'] as int
    ..catgory = json['catgory'] as int
    ..type = json['type'] as int
    ..paperId = json['paperId'] as int
    ..areaId = json['areaId'] as int
    ..area = json['area'] as int
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..content = json['content'] as String
    ..areaName = json['areaName'] as String
    ..isNew = json['isNew'] as int
    ..collageActiveId = json['collageActiveId'] as int
    ..appId = json['appId'] as String
    ..appName = json['appName'] as String
    ..path = json['path'] as String
    ..from = json['from'] as String
    ..cateId = json['cateId'] as int;
}

Map<String, dynamic> _$AdvertiseItemToJson(AdvertiseItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'shortTitle': instance.shortTitle,
      'image': instance.image,
      'url': instance.url,
      'padImageUrl': instance.padImageUrl,
      'rid': instance.rid,
      'text': instance.text,
      'hide': instance.hide,
      'subject': instance.subject,
      'catgory': instance.catgory,
      'type': instance.type,
      'paperId': instance.paperId,
      'areaId': instance.areaId,
      'area': instance.area,
      'width': instance.width,
      'height': instance.height,
      'content': instance.content,
      'areaName': instance.areaName,
      'isNew': instance.isNew,
      'collageActiveId': instance.collageActiveId,
      'appId': instance.appId,
      'appName': instance.appName,
      'path': instance.path,
      'from': instance.from,
      'cateId': instance.cateId,
    };

GenericCollection _$GenericCollectionFromJson(Map<String, dynamic> json) {
  return GenericCollection(
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : AdvertiseConfig.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    code: json['code'] as int,
  );
}

Map<String, dynamic> _$GenericCollectionToJson(GenericCollection instance) =>
    <String, dynamic>{
      'data': instance.data,
      'code': instance.code,
    };
