import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body:ListView(
        children: <Widget>[
          ListofItem(title:'Button',page:ButtomDemo()),
          ListofItem(title:'FloatingActionButton',page:FloatingActionButtonDemo()),
        ],
      )
    );
  }
}
class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButton = FloatingActionButton(
    onPressed: (){},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black87,
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(10.0),
    // ),
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: (){},
      icon: Icon(Icons.add),
      label: Text('add'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 80.0,
        ),
      ),
    );
  }
}


class ButtomDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _buttonDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("button"), 
                  onPressed: (){},
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                ),
                FlatButton.icon(
                  // child: Text("button"), 
                  label:Text('button'),
                  icon: Icon(Icons.chat),
                  onPressed: (){},
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                ),
              ],
            );
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtomDemo'),
        elevation: 0.0,
      ),
      body: Container(
        // color: Colors.blue,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buttonDemo,
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
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
                
              ],
            )
          ],
        ),
      ),
    );
  }
}


class ListofItem extends StatelessWidget {

  final String title;
  final Widget page;

  ListofItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context){
              return page;
            }
          )
        );
      },
    );
  }
}