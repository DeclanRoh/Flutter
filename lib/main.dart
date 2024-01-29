import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/* 레이아웃 혼자서도 잘짜는 법
* 1. 예시디자인 준비(없으면 다른앱 베껴야)
* 2. 예시화면에 네모그리기
* 3. 바깥 네모부터 하나하나 위젯으로 (가로: Row, 세로: Column)
* 4. 마무리 디자인
* */

var a = SizedBox(
  child: Text('안녕'),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('숙제임')
          ),
          body: ListView(
            children: [
              ContactItem(),
              ContactItem(),
              ContactItem(),
            ],
          ),
          bottomNavigationBar: CostomBottomAppBar(),
        ),
    );
  }
}

class CostomBottomAppBar extends StatelessWidget {
  const CostomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget> [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.contact_page),
        ],
      ),
    );
  }
}


class ContactItem extends StatelessWidget {
  const ContactItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.account_circle),
        Text('홍길동'),
      ],
    );
  }
}


class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('안녕'),
    );
  }
}
