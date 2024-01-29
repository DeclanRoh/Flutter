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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('숙제임'),
          ),
          body: Container(
            height: 150,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset('eunbi.jpg', width: 150,),
                Flexible(
                  flex: 9,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('권은비입니다.'),
                        Text('여름의 여신'),
                        Text('선넘비'),
                        Text('대장토끼은비'),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                            Icon(Icons.favorite),
                            Text('1000000'),
                          ],
                        )
                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
    );
  }
}
