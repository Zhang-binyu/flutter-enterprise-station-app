import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MediaQuery(
        data: MediaQueryData(),
        child: beef_page(),
      ),
    ),
  );
}

class beef_page extends StatelessWidget {
  const beef_page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('牛肉火锅'),
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
                      child: const Text('牛肉火锅'),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey, // 灰色背景
                        border: Border.all(color: Colors.blue, width: 1.0), // 蓝色边框
                      ),
                      padding: const EdgeInsets.all(8.0), // 内边距
                      child: const Text('潮汕火锅发源于汕头，由当地的“牛肉炉”改良而来。 最初的“牛肉炉”是以混入沙茶酱的高汤为锅底，再用炭火慢煮牛肉；之后逐渐发展为清汤火锅，原先放入汤底的沙茶酱成为蘸料。 正宗潮汕牛肉火锅讲究以清汤作为汤底，常见的有牛骨南姜熬制的清汤或者清水，这一点与川渝一带的麻辣火锅不同，而与北京的涮羊肉类似。'),
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
                      'assets/images/banners/1.jpg',
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
