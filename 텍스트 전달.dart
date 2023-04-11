import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

// 첫 번째 페이지
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("텍스트 넘기기"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("다음 페이지로 이동"),
          onPressed: () {
            // 페이지 이동
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondPage('이렇게 작성하면 될까요?')),
            );
          },
        ),
      ),
    );
  }
}

// 두 번째 페이지
class SecondPage extends StatelessWidget {
  String id = '';
  SecondPage(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두번째 Route"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Main에서 보낸 text 값 =" + id),
            ElevatedButton(
              child: const Text('Main으로 돌아가기'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
