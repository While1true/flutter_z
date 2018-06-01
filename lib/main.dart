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
      home: new Myapp(),
      routes: <String, WidgetBuilder>{
        "/MyHome": (BuildContext context) => Myapp(),
      },
    );
  }
}

class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>MyappState();

}
class MyappState extends State<Myapp>{
  int _index=0;
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
      MaterialScaffod(index: _index,
        appBar: new AppBar(title: Text("$_index"),),
        materialScaffodType: MaterialScaffodType.INDICATED,
        iconSize: 30.0,
        childrenContent: [
          new Scaffold(
            appBar: AppBar(title: Text("来了"),),),
          new Center(child: new Text('11111111111'),),
          new Center(child: new Text('22222222222'),),
          new Center(child: new Text('3333333333333'),),
          new Center(child: new Text('4444444444444'),),
          new SingleChildScrollView(child: SizedBox(height: 1200.0,child: Center(child: Text('ssssssssssssssssssssssss',style: new TextStyle(fontSize: 72.0),),),),),
        ],
        itembars:<Widget>[
//          BottomNavigationBarItem(icon: Icon(Icons.book), title: Text('1')),
//          BottomNavigationBarItem(icon: Icon(Icons.web), title: Text('2')),
//          BottomNavigationBarItem(icon: Icon(Icons.call), title: Text('3')),
//          BottomNavigationBarItem(icon: Icon(Icons.call), title: Text('x')),
//          BottomNavigationBarItem(
//              icon: Icon(Icons.verified_user), title: Text('4')),
          Card(child: new SizedBox(height: 56.0,child: Text("西瓜",style: new TextStyle(fontSize: 28.0)),),),
          Card(child: new SizedBox(height: 56.0,child: Text("哈密码",style: new TextStyle(fontSize: 28.0)),),),
          Card(child: new SizedBox(height: 56.0,child: Text("芒果",style: new TextStyle(fontSize: 28.0)),),),
          Card(child: new SizedBox(height: 56.0,child: Text("橘子",style: new TextStyle(fontSize: 28.0)),),),
          Card(child: new SizedBox(height: 56.0,child: Text("甜瓜",style: new TextStyle(fontSize: 28.0)),),),
          Card(child: new SizedBox(height: 56.0,child: Text("葡萄",style: new TextStyle(fontSize: 28.0)),),),

        ], onIndexChanged: (index) {
              setState(() {
                _index=index;
              });
        },));


}


