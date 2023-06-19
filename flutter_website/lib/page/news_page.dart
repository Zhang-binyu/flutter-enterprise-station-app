import 'package:flutter/material.dart';
import 'news_detail_page.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                // 导航到新页面
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPageFirst()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.sentiment_satisfied,
                    color: Colors.greenAccent,
                  ), // 左侧笑脸或感叹号图标
                  SizedBox(width: 8.0), // 左侧图标和文字之间的间距
                  Expanded(
                    child: Text(
                      '虽然开发过程中我遇到了很多困难，',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                  ), // 右侧箭头图标
                ],
              ),
            ),
            SizedBox(height: 8.0), // 行间距
            InkWell(
              onTap: () {
                // 导航到其他页面
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPageSecond()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.sentiment_satisfied,
                    color: Colors.greenAccent,
                  ), // 左侧笑脸或感叹号图标
                  SizedBox(width: 8.0), // 左侧图标和文字之间的间距
                  Expanded(
                    child: Text(
                      '但是我还是摸索出了成功的道路！',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                  ), // 右侧箭头图标
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
