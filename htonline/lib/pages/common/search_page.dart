import 'package:flutter/material.dart';
import 'package:htonline/dao/advertiseDao.dart';
import 'package:htonline/model/search_keywords_bean_entity.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  SearchKeywordsBeanEntity _beanEntity;
  TextEditingController _controller = new TextEditingController();
  List<Widget> _hotSearchTag = List();
  List<Widget> _mySearchTag = List();

  @override
  void initState() {
    super.initState();
    getSearchKeys();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFfafafa), width: 0.5),
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular((20.0))),
          height: 35.0,
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.clear),
                border: InputBorder.none),
            textInputAction: TextInputAction.search,
          ),
        ),
        actions: <Widget>[
          GestureDetector(
              child: Container(
                height: 45,
                alignment: Alignment.center,
                width: 45,
                child: Text(
                  '搜索',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              onTap: () {})
        ],
      ),
      body: _beanEntity == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 12, right: 12, top: 30),
              child: ListView(
                children: <Widget>[
                  Text(
                    '热门搜索',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    children: _hotSearchTag,
                  ),
                  Text(
                    '搜索历史',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    children: _mySearchTag,
                  )
                ],
              ),
            ),
    );
  }

  void getSearchKeys() {
    AdvertiseDao.fetchHomeSearchKeysList(success: (data) {
      _beanEntity = data;
      if (_beanEntity != null && _beanEntity.hotwords != null) {
        _beanEntity.hotwords.forEach((keywords) {
          _hotSearchTag.add(Container(
            padding: EdgeInsets.only(right: 8, bottom: 2),
            child: ChoiceChip(
                label: Text(
                  keywords,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                selected: true,
                padding: EdgeInsets.all(2),
                selectedColor: Colors.white,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.grey, width: 0.5),
                )),
          ));
        });
      }
      if (_beanEntity != null && _beanEntity.mywords != null) {
        _beanEntity.mywords.forEach((keywords) {
          _mySearchTag.add(Container(
            padding: EdgeInsets.only(right: 8, bottom: 2),
            child: ChoiceChip(
                label: Text(
                  keywords,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                selected: true,
                padding: EdgeInsets.all(2),
                selectedColor: Colors.white,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.grey, width: 0.5),
                )),
          ));
        });
      }
      setState(() {});
    });
  }
}
