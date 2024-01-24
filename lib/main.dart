import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar( title: Text('앱임') ),
          body: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity, height: 50, color: Colors.purple,
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.black)
              // ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ],
              ),
            )
          ),
        )
    );
  }
}
