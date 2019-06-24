import 'dart:async';
import 'dart:convert';
import 'package:flutter_app/bean/homeBannerBean.dart';
import 'package:flutter_app/http/API.dart';
import 'package:http/http.dart' as http;


class HomeBannerDao {
  static Future<HomeBannerBean> fetch() async {
    var homebean = await http.get(API.HOME_BANNER_URL);
    if (homebean?.statusCode == 200) {
      Utf8Decoder utf8decoder = new Utf8Decoder();
      var result = json.decode(utf8decoder.convert(homebean.bodyBytes));
      var model = HomeBannerBean.fromJson(result);
      if (model.errorCode == 0) {
        return model;
      } else {
        throw new Exception("服务器异常");
      }
    } else {
      throw new Exception("网络错误");
    }
  }
}