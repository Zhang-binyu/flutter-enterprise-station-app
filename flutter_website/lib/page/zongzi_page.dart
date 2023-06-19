import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MediaQuery(
        data: MediaQueryData(),
        child: zongzi(),
      ),
    ),
  );
}

class zongzi extends StatelessWidget {
  const zongzi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('潮汕粽子'),
        ),

// 水平布局
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center, // 水平垂直居中
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // 纵向居中
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey, // 灰色背景
                        border: Border.all(color: Colors.blue, width: 1.0), // 蓝色边框
                      ),
                      padding: const EdgeInsets.all(8.0), // 内边距
                      child: const Text('潮汕粽子'),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey, // 灰色背景
                        border: Border.all(color: Colors.blue, width: 1.0), // 蓝色边框
                      ),
                      padding: const EdgeInsets.all(8.0), // 内边距
                      child: const Text('潮汕粽子是广东一带的传统名点，属于端午节食俗。 甜润爽口，凉喉解渴，其色、香、味俱佳，深受潮人的喜爱。 所用原料为糯米，鸡肉，香菇，虾米，鹌鹑蛋，板栗，红豆，白果，酱油，白糖，砂茶粉，盐，粽叶，粽绳。'),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, // 横向居中
                      children:  <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey, // 灰色背景
                            border: Border.all(color: Colors.blue, width: 1.0), // 蓝色边框
                          ),
                          padding: const EdgeInsets.all(8.0), // 内边距
                          child: Row(
                            children: <Widget>[
                              for (int i = 0; i < 5; i++) // 循环五次，生成五个五角星
                                const Icon(Icons.star, color: Colors.amber),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey, // 灰色背景
                            border: Border.all(color: Colors.blue, width: 1.0), // 蓝色边框
                          ),
                          padding: const EdgeInsets.all(8.0), // 内边距
                          child: const Text('170'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center, // 纵向居中
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey, // 灰色背景
                            border: Border.all(color: Colors.blue, width: 1.0), // 蓝色边框
                          ),
                          padding: const EdgeInsets.all(8.0), // 内边距
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(color: Colors.blue, width: 1.0),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: const Icon(Icons.kitchen), // 冰箱图标
                              ),
                              const SizedBox(width: 20),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(color: Colors.blue, width: 1.0),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: const Icon(Icons.alarm), // 闹钟图标
                              ),
                              const SizedBox(width: 20),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(color: Colors.blue, width: 1.0),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: const Icon(Icons.restaurant), // 刀叉图标
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey, // 灰色背景
                            border: Border.all(color: Colors.blue, width: 1.0), // 蓝色边框
                          ),
                          padding: const EdgeInsets.all(8.0), // 内边距
                          child: Row(
                            children: const [
                              Expanded(child: Text('PREP:')),
                              Expanded(child: Text('COOK:')),
                              Expanded(child: Text('FEEDS:')),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey, // 灰色背景
                            border: Border.all(color: Colors.blue, width: 1.0), // 蓝色边框
                          ),
                          padding: const EdgeInsets.all(8.0), // 内边距
                          child: Row(
                            children: const [
                              Expanded(child: Text('25min')),
                              Expanded(child: Text('1 hr')),
                              Expanded(child: Text('4-6')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/banners/2.jpg',
                      width: 180,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        color: Colors.black54,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              '学号：200011103014',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '姓名：张槟煜',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )

    );
  }
}
