import 'package:flutter/material.dart';

class popup_menudemo extends StatefulWidget {
  _popup_menudemoState createState() => _popup_menudemoState();
}

class _popup_menudemoState extends State<popup_menudemo> {

  String _currentMenuItem  = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('popup_menudemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuItem),
                PopupMenuButton(
                  onSelected: (vaule){
                    print(vaule);
                    setState((){
                      _currentMenuItem = vaule;     
                    });
                  },
                  itemBuilder: (BuildContext context)=>[
                    PopupMenuItem(
                      value: 'Home',
                      child: Text('Home'),
                    ),
                    PopupMenuItem(
                      value: 'About',
                      child: Text('About'),
                    ),
                    PopupMenuItem(
                      value: 'Me',
                      child: Text('Me'),
                    )

                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}