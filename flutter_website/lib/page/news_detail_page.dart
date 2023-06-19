import 'package:flutter/material.dart';

class DetailPageFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('真是谢天谢地！'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(
            'flutter的环境是真的难安装呀！经过这次学习，我发现自己还是有很多不懂的地方。还需要继续努力！',
            style: TextStyle(
              fontSize: 32,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
            ),
            softWrap: true, // 允许自动换行
          ),
        ),
      ),
    );
  }
}

class DetailPageSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这是它需要的环境。'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
'''

这个程序的环境如下：

name: flutter_website

description: A new Flutter application.

version: 1.0.0+1

environment:

sdk: ">=2.1.0 <3.0.0"


dependencies:

flutter:

sdk: flutter

#轮播图

flutter_swiper: any

#网络请求库

dio: 5.1.2

#状态管理

provider: 6.0.5

#刷新加载数据

flutter_easyrefresh: ^1.2.7

#企业级路由

fluro: any

#加载html数据

flutter_html: 0.3.0

#日期格式化

date_format: any

#websocket处理

web_socket_channel: any

quiver: any

dev_dependencies:

flutter_test:

sdk: flutter

flutter:

uses-material-design: true

assets:

  #启动加载图
  
  - assets/images/loading.jpeg
  
#轮播图片

- assets/images/banners/1.jpg
- assets/images/banners/2.jpg
- assets/images/banners/3.jpg
- assets/images/banners/4.jpg
''',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: true, // 允许自动换行
              ),
            ),
          ],
        ),
      ),
    );
  }
}
