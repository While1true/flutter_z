import 'package:flutter/material.dart';

/**
 *   ________________
 *  |______888_____ |
 *  ||            ||
 *  ||            ||
 *  ||            ||
 *  ||____________||
 *  |___|__|___|___|
 *
 *
 *
 */
class MaterialScaffod extends StatefulWidget {
  final int index;
  final double iconSize;
  final AppBar appBar;
  final List<BottomNavigationBarItem> itembars;
  final List<Widget> childrenContent;
  final ValueChanged<int> onIndexChanged;

  MaterialScaffod(
      {this.appBar, this.iconSize=24.0,this.index, this.onIndexChanged, @required this.childrenContent, @required this.itembars });


  @override
  _MaterialScaffodState createState() {
    return _MaterialScaffodState();
  }


}

class _MaterialScaffodState extends State<MaterialScaffod> {
  int _index;

  @override
  void initState() {
    super.initState();
    _index = (widget.index == null ? widget.index : 0);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: widget.appBar,
        bottomNavigationBar: BottomNavigationBar(iconSize:widget.iconSize,currentIndex: _index,
            items: widget.itembars,
            onTap: (index) {
              widget.onIndexChanged(index);
              setState(() {
                _index = index;
              });
            },
            type: BottomNavigationBarType.fixed),
        body: IndexedStack(
          index: _index, children: widget.childrenContent,));
  }

}