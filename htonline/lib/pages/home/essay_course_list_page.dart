import 'package:flutter/cupertino.dart';

class EssayCourseList extends StatefulWidget{
  int type;

  @override
  State<StatefulWidget> createState() {
    return _EssayListState();
  }
}

class _EssayListState extends State<EssayCourseList> with AutomaticKeepAliveClientMixin{

  @override
  void initState() {
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {

    return Text('data');
  }
}