import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:htonline/dao/advertiseDao.dart';
import 'package:htonline/model/login_user_info_entity.dart';
import 'package:htonline/model/user_bean.dart';
import 'package:htonline/model/user_info.dart';
import 'package:htonline/navigator/tab_navigater.dart';
import 'package:htonline/utils/sputils.dart';

import '../../page_route_utils.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mNameController = TextEditingController();
  TextEditingController mPswController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Text(''),
          title: Center(
            child: Text(
              '登录',
              style: TextStyle(color: Colors.black87, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          actions: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              height: 45,
              width: 45,
              child: IconButton(icon: Icon(Icons.clear), onPressed: () {
                Navigator.of(context).pop();
              }),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 5, top: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  '华图教育/华图网校/面酷账号均可登录',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: mNameController,
                  decoration: InputDecoration(
                    focusColor: Colors.grey,
                    prefixIcon: Icon(
                      Icons.account_box,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.4)),
                    border: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey[300], width: 0.2)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: mPswController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                    focusColor: Colors.grey,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                    border: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey[500], width: 0.5)),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                      text: "注册/登录即表示 阅读并同意",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      children: [
                        TextSpan(
                            text: '《华图在线用户服务协议》',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                        TextSpan(
                          text: '和',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        TextSpan(
                            text: '《隐私政策》',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                      ]),
                  softWrap: true,
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(20),
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: GestureDetector(
                  child: Text(
                    '登录',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  onTap: () {
                    String userName = mNameController.text;
                    String psw = mPswController.text;
                    AdvertiseDao.fetchLoginByPsw(userName, psw, success: (data){
                      LoginUserInfoData infoData = data;
                      UserInfoUtil.token = infoData.token;
                      UserInfoUtil.userName = infoData.uname;
                      UserInfoUtil.userInfoData = infoData;
                      SPUtils.getInstance().saveUserInfo(infoData);
                      Navigator.of(context).pop();
                    });
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
