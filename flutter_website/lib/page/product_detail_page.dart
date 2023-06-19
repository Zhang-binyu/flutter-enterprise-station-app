import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../conf/configure.dart';
import '../model/product_detail_model.dart';
import '../provider/product_detail_provider.dart';
import '../service/http_service.dart';

// 产品详情页面
class ProductDetailPage extends StatefulWidget {
  // 传入产品Id
  final String productId;

  ProductDetailPage(this.productId);

  @override
  ProductDetailPageState createState() => ProductDetailPageState();
}

class ProductDetailPageState extends State<ProductDetailPage> {
  @override
  void initState() {
    super.initState();
    // 获取产品详情
    getProductDetail();
  }

  void getProductDetail() async {
    // 请求url
    var url = 'http://' + Config.IP + ':' + Config.PORT + '/getProductDetail';
    // 请求参数产品Id
    var formData = {"productId": widget.productId};
    print(widget.productId);
    // 调用请求方法传入url及表单数据
    await request(url, formData: formData).then((value) {
      var data = json.decode(value.toString());
      // 打印数据
      print('产品详情数据Json格式:::' + data.toString());
      // 将Json数据转换成ProductDetailModel
      ProductDetailModel productDetailData = ProductDetailModel.fromJson(data);
      // 设置ProductDetailProvider里的产品详情数据
      if (productDetailData.data != null) {
        Provider.of<ProductDetailProvider>(context, listen: false).getProductDetail(productDetailData.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // 根据Consumer获取ProductDetailProvider对象
    return Consumer<ProductDetailProvider>(
      builder: (BuildContext context, ProductDetailProvider productProvider, Widget child) {
        // 获取产品详情数据
        ProductDetail detail = productProvider.productDetail;
        if (detail != null) {
          return Scaffold(
            appBar: AppBar(
              title: Text('详情'),
            ),
            body: ListView(
              children: [
                // 图片和文本部分
                Container(
                  padding: const EdgeInsets.all(32.0),
                  alignment: Alignment.topCenter,
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        child: Image.network(detail.imageUrl),
                      ),
                      Positioned(
                        bottom: 30.0,
                        right: 30.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Text(
                              '学号：200011103014',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '姓名：张槟煜',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // 标题部分
                Container(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          detail.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Text(
                        '简要描述',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),

                // 按钮部分
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    buildButtonColumn(Icons.call, 'Call'),
                    buildButtonColumn(Icons.near_me, 'Route'),
                    buildButtonColumn(Icons.share, 'Share'),
                  ],
                ),

                // 介绍文本部分
                Container(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(
                    detail.desc.toString(),
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('详情'),
            ),
            body: Center(),
          );
        }
      },
    );
  }

  Column buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: Colors.lightGreen[600]),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.lightGreen[600],
            ),
          ),
        )
      ],
    );
  }
}
