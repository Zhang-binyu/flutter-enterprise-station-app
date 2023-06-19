import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_website/page/changfen_page.dart';
import 'beef_page.dart';
import 'zongzi_page.dart';
import 'tea_page.dart';
//首页轮播图组件
class BannerWidget extends StatelessWidget{
  //图片路径
  List<String> banners = <String>[
    'assets/images/banners/1.jpg',
    'assets/images/banners/2.jpg',
    'assets/images/banners/3.jpg',
    'assets/images/banners/4.jpg',
  ];

  List<Widget> targetPages = [
    beef_page(), // 轮播图1对应的页面
    zongzi(), // 轮播图2对应的页面
    Changfen(), // 轮播图3对应的页面
    tea(), // 轮播图4对应的页面
  ];

  @override
  Widget build(BuildContext context) {
    //计算宽高 按比例
    double width = MediaQuery.of(context).size.width;
    double height = width * 540.0 / 1080.0;
    return Container(
      width: width,
      height: height,
      //轮播组件
      child: Swiper(
        //轮播项构建器
        itemBuilder: (BuildContext context, index){
          return GestureDetector(
            onTap: () {
              if(index < targetPages.length) {
                // 在这里执行跳转操作
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => targetPages[index]),
                );
              }
            },
            child:Container(
              //图片左右内边距
              margin: EdgeInsets.only(left: 5, right: 5),
              child: Image.asset(
                //根据索引获取图片
                banners[index],
                width: width,
                height: height,
                //指定填充模式
                fit: BoxFit.cover,
              ),
            )
          );
        },
        //轮播数量
        itemCount: banners.length,
        //方向
        scrollDirection: Axis.horizontal,
        //是否自动播放
        autoplay: true,
      ),
    );
  }
}

