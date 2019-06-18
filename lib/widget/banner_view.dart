import 'package:flutter/material.dart';


class banner_view extends StatefulWidget{

  //图片集合
  List<CycleImageEntity> cycleImages = new List();
  //点击事件回调
  Function onPageClicked;
  //是否自动滚动
  bool autoScroll;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Banner();
  }

  banner_view();

}

class _Banner extends State<banner_view>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}

class CycleImageEntity {
  String cycleContent;
  String imageUrl;
}