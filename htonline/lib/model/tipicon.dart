import 'dart:core';

class TipNewBean {
  int category; // 考试类型
  int subject; // 科目
  List<int> match; // 当前模考大赛id
  List<int> small; // 当前小模考id
  List<int> matchReadFlag; // 模考大赛是否已读标记   0、未读 1、已读
  List<int> smallReadFlag;

  TipNewBean(
      {this.category,
      this.subject,
      this.match,
      this.small,
      this.matchReadFlag,
      this.smallReadFlag});
}
