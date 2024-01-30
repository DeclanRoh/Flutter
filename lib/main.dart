import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/* 레이아웃 혼자서도 잘짜는 법
* 1. 예시디자인 준비(없으면 다른앱 베껴야)
* 2. 예시화면에 네모그리기
* 3. 바깥 네모부터 하나하나 위젯으로 (가로: Row, 세로: Column)
* 4. 마무리 디자인
* */

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = ['노경환', '전믿음', '전코몽'];
  var like = [0, 0, 0];

  // state는 값이 변하면 재랜더링이 된다.
  // state의 경우, 자주 변경할 것만 선언해서 사용한다. 변동되지 않으면 굳이 state에 담을 필요 없다
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Text('테스트'),
            onPressed: (){
              setState(() {
                'test';
              });
            },
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('공부중'),
          ),
          body: ListView.builder(
            itemCount: 3,
            itemBuilder: (c, i){
              return ListTile(
                leading: Text(like[i].toString()),
                title: Text(name[i]),
                trailing: ElevatedButton(
                  child: Text('좋아요'),
                  onPressed: (){
                    setState(() {
                      like[i] += 1;
                    });
                  },
                ),
              );
            },
          ),
          bottomNavigationBar: CustomBottomAppBar(),
        ),
    );
  }
}

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

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
    return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('홍길동')
    );
  }
}
