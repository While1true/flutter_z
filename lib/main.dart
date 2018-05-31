import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter_z/MyScaffold.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      routes: <String, WidgetBuilder>{
        "/MyHome": (BuildContext context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget implements TickerProvider {
  @override
  Widget build(BuildContext context) =>
      new Theme(data: Theme.of(context).copyWith(
        primaryColor: Colors.green,
//        textTheme: Theme
//            .of(context)
//            .textTheme
//            .copyWith(caption: Theme
//            .of(context)
//            .textTheme
//            .caption
//            .copyWith(color: Colors.grey[400])),
      ), child:
      MaterialScaffod(index: 2,
        iconSize: 30.0,
        childrenContent: [
          new Scaffold(
            appBar: AppBar(title: Text("来了"), bottom: TabBar(controller:TabController(length: 5,vsync: this),tabs: <Widget>[
              Icon(Icons.book),
              Icon(Icons.web),
              Icon(Icons.call),
              Icon(Icons.call),
              Icon(Icons.call)
            ],),),),
          new Center(key: GlobalKey(), child: new Text('11111111111'),),
          new Center(key: GlobalKey(), child: new Text('22222222222'),),
          new Center(key: GlobalKey(), child: new Text('3333333333333'),),
          new Center(key: GlobalKey(), child: new Text('4444444444444'),),
        ],
        itembars: [
          BottomNavigationBarItem(icon: Icon(Icons.book), title: Text('1')),
          BottomNavigationBarItem(icon: Icon(Icons.web), title: Text('2')),
          BottomNavigationBarItem(icon: Icon(Icons.call), title: Text('3')),
          BottomNavigationBarItem(icon: Icon(Icons.call), title: Text('x')),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), title: Text('4')),
        ], onIndexChanged: (index) {},));

  @override
  Ticker createTicker(TickerCallback onTick) {
    return new Ticker(onTick);
  }

}



