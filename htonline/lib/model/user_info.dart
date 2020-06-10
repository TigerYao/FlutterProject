import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';

import 'login_user_info_entity.dart';

class UserInfoUtil{
   static int userId;
   static String ucId;

   static String mId;//教育的UseiD   BM代注册接口http://172.17.17.80:82/index.php?s=/3&page_id=130

   static String token = '';             // 用户token,登录状态才有，测试用token：e3bb506247a44689b77db970898c12b7
   static String userAgent;         // User-Agent 采用系统原始即可,不需做任何处理
   static String userName;
   static String uid = '-1';
   static String versionName = "7.2.190";
   static String pixel;
   static String deviceName;
   static String systemName;
   static int subject;
   static LoginUserInfoData userInfoData;

   static void getPix(BuildContext context){
     Size size = MediaQuery.of(context).size;
     pixel = size.width.toString() +"_" +size.height.toString();
   }

   static void getDeviceInfo() async{
     DeviceInfoPlugin deviceInfo = new DeviceInfoPlugin();
     if(Platform.isIOS){
       print('IOS设备：');
       IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
       deviceName = iosInfo.name;
       systemName = iosInfo.systemName;
     }else if(Platform.isAndroid){
       AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
       deviceName = androidInfo.id;
       systemName = androidInfo.version.release;
       print('Android设备' + androidInfo.toString());
     }
   }
}