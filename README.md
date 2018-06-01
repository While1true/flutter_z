# flutter_z

A new Flutter application.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

## 基本Ui
```aidl
const MaterialScaffod(
      {this.appBar, this.iconSize = 24.0, this.materialScaffodType = MaterialScaffodType
          .STACK, this.index, this.onIndexChanged, @required this.childrenContent, @required this.itembars });

class MyappState extends State<Myapp>{
  int _index=0;
  @override
  Widget build(BuildContext context) =>
      new Theme(data: Theme.of(context).copyWith(
        primaryColor: Colors.green,
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

```
![dd](https://github.com/While1true/flutter_z/blob/master/device-2018-05-31-170510.png?raw=true)
![ddx](https://github.com/While1true/flutter_z/blob/master/device-2018-06-01-143458.png?raw=true)
