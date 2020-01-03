import 'package:flutter/material.dart';
import 'package:flutter_app/widget/tabbarWidget.dart';
import 'package:toast/toast.dart';


const double SCROLL_PIXELS_OFFSET = 500;

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Page();
  }
}

class Page extends State<homePage> {
  List bannerList = [];
  List articleData = [];

  int offset = 0;
  double scrollPixels = 0;

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _loadHomeList();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      _renderTab(new Text("待确认")),
      _renderTab(new Text("待报到")),
      _renderTab(new Text("作业中")),
      _renderTab(new Text("已结束"))
    ];
    return WillPopScope(
    child: new tabbarWidget(
      title: new Text("首页"),
      type: tabbarWidget.TOP_TAB,
      tabItems:tabs,
      tabViews: <Widget>[],
      indicatorColor: Colors.blueAccent,
    ), onWillPop: () {

    },
    );
  }

  _renderTab(text) {
    //返回一个标签
    return new Tab(
        child: new Container(
          //设置paddingTop为6
          padding: new EdgeInsets.only(top: 6),
          //一个列控件
          child: new Column(
            //竖直方向居中
            mainAxisAlignment: MainAxisAlignment.center,
            //水平方向居中
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[text],
          ),
        )
    );
  }

  void _loadHomeList() {

  }
}
