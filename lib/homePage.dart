
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/mine_drawer.dart';
import 'package:flutter_app/widget/banner_view.dart';
import 'package:flutter_app/dao/HomeBannerDao.dart';

import 'bean/homeBannerBean.dart';
import 'package:toast/toast.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Page();
  }
}

class Page extends State<homePage> {
  List<BannerData> bannerList = [];

  @override
  void initState() {
    _getBannerInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('首页', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: Builder(
            builder: (context) =>
                GestureDetector(
                  onTap: () => Scaffold.of(context).openDrawer(),
                  child: Icon(
                    Icons.supervised_user_circle,
                    color: Colors.white,
                  ),
                )),
      ),
      drawer: MineDrawer(),
      body:
       banner_view(bannerList, onPageClicked: (index) {
        print(bannerList[index].desc);
      }, autoScroll: true,),
    
    );
  }

  void _getBannerInfo(){
    HomeBannerDao.fetch().then((model) {
      setState(() {
        bannerList = model.data;
      });
    }).catchError((error) {
     Toast.show(error.toString(), context,
         duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
    });
  }

  Widget header(BuildContext context) {
    return new Image.network(
      'http://i2.yeyou.itc.cn/2014/huoying/hd_20140925/hyimage06.jpg',
    );
  }
}
