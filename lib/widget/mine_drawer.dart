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
      accountName: new Text('Workai'),
      accountEmail: new Text('wangy@workai.com.cn'),
      currentAccountPicture: new CircleAvatar(
        backgroundImage: AssetImage('/images/icon_default_user.png'),
        radius: 35.0,
      ),
    );

    return Container(
      width: MediaQueryData.fromWindow(window).size.width * 0.8,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: <Widget>[
          userHeader, // 可在这里替换自定义的header
          ListTile(
            title: Text('消息'),
            leading: new CircleAvatar(
              child: new Icon(Icons.message),
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
          ),
          ListTile(
            title: Text('机构'),
            leading: new CircleAvatar(
              child: new Icon(Icons.list),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Container(
              alignment: Alignment.bottomCenter,
              height: 410.0,
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              // margin:const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Text(
                    "北京小爱智能科技",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ),
                  Icon(Icons.navigate_next, color: Colors.grey),
                ],
              )),
        ],
      ),
    );
  }
}
