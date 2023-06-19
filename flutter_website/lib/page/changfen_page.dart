import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MediaQuery(
        data: MediaQueryData(),
        child: Changfen(),
      ),
    ),
  );
}

class Changfen extends StatelessWidget {
  const Changfen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('肠粉'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.blue, width: 1.0),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('肠粉'),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.blue, width: 1.0),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      '潮汕肠粉是一种使用米磨成粉，加水、鸡蛋、肉末、鱿鱼、生菜、牛肉、蘑菇、鲜虾等做成的广式潮汕小吃，也是最为普遍的早餐，粉粉嫩嫩、晶莹剔透，看起来粉皮白如雪花、薄如蝉翼、晶莹剔透，吃起来鲜香满口、细腻爽滑、还有一点点韧劲。',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.blue, width: 1.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            for (int i = 0; i < 5; i++)
                              const Icon(Icons.star, color: Colors.amber),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.blue, width: 1.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: const Text('170'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.blue, width: 1.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                Border.all(color: Colors.blue, width: 1.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(Icons.kitchen),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                Border.all(color: Colors.blue, width: 1.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(Icons.alarm),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                border:
                                Border.all(color: Colors.blue, width: 1.0),
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(Icons.restaurant),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.blue, width: 1.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
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
                          color: Colors.grey,
                          border: Border.all(color: Colors.blue, width: 1.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
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
                    'assets/images/banners/3.jpg',
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
      ),
    );
  }
}
