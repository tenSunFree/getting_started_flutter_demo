import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false, // 隱藏右上角的debug圖示
        theme: new ThemeData(
          // 應用程式的主題
          primarySwatch: Colors.amber,
          scaffoldBackgroundColor:
          new Color.fromRGBO(212, 220, 168, 1.0), // 首頁的背景顏色
        ),
        home: new MyHomePage(title: '首頁') // 標題欄的文字
    );
  }
}

/// 主頁的部分
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title; // Widget子類中的字段, 始終標記為最終

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          widget.title,
          style: new TextStyle(
              fontSize: 20.0, color: new Color.fromRGBO(234, 241, 233, 1.0)),
        ),
        centerTitle: true, // 標題居中
        backgroundColor: new Color.fromRGBO(190, 156, 121, 1.0),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              '點擊右下角的按鈕 ' + '$_counter' + ' 次',
              style: new TextStyle(
                  fontSize: 20.0, color: new Color.fromRGBO(10, 189, 159, 1.0)),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: new Color.fromRGBO(127, 172, 215, 1.0),
        child: new Icon(Icons.add),
      ), // 結尾也要添加逗號, 這樣在重新排列時, 效果會比較好
    );
  }
}
