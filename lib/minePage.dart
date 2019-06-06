import 'package:flutter/material.dart';

class minePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new Page();
  }
}

class Page extends State<minePage>{
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(context),
      body: new ListView(
        children: <Widget>[
          header(context),
          header(context),
          header(context),
          header(context),
          header(context),
          header(context),
        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('我的'));
  }

  Widget header(BuildContext context) {
    return new Image.network(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550239176511&di=9dd33e5c18bc7b7758e672144e5063cb&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fautophotolib_bbs%2F1410%2F20%2Fc0%2F39899768_1413794937000.jpg',
    );
  }
}

