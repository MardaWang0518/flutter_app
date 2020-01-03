import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MineDrawer extends StatefulWidget {
  @override
  _MineDrawerState createState() => _MineDrawerState();
}

class _MineDrawerState extends State<MineDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget userHeader = UserAccountsDrawerHeader(
      accountName: new Text('MardaWang0518'),
      accountEmail: new Text('wangy@workai.com.cn'),
      currentAccountPicture: new CircleAvatar(
        backgroundImage: AssetImage('/images/user_default.png'),
        radius: 25.0,
      ),
    );

    return Container(
      width: MediaQueryData
          .fromWindow(window)
          .size
          .width * 0.8,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          userHeader, // 可在这里替换自定义的header
          ListTile(
            title: Text('我的计划'),
            leading: new CircleAvatar(
              child: new Icon(Icons.list),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('词汇量'),
            leading: new CircleAvatar(
              child: new Icon(Icons.confirmation_number),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('我的收藏'),
            leading: new CircleAvatar(
              child: new Icon(Icons.favorite),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('通知中心'),
            leading: new CircleAvatar(
              child: new Icon(Icons.message),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(height: 1.0, indent: 0.0, color: Colors.grey,),
          ListTile(
            title: Text('意见反馈/给个好评'),
            leading: new CircleAvatar(
              child: new Icon(Icons.high_quality),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('设置'),
            leading: new CircleAvatar(
              child: new Icon(Icons.settings),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
