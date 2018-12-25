import 'package:flutter/material.dart';
import 'demo/Drawer.dart';
import 'demo/BottomNavigationBartender.dart';
import 'demo/ListViewDemo.dart';
import 'demo/basicdemo.dart';
import 'demo/LayoutsDemo.dart';
import 'demo/viewdemo.dart';
import 'demo/sliverDemo.dart';
import 'demo/NavigatorDemo.dart';
import 'demo/formDemo.dart';
import 'demo/metrial-components.dart';

void main(){

  runApp(App());
}


class App extends StatelessWidget{
  @override //覆盖父类build方法
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/mdc',
      routes: {
        '/form':(context)=>formDemo(),
        '/':(context) => NavigatorDemo(),
        '/about':(context) => Page(title:'about'),
        '/mdc':(context) =>MaterialComponents(),
      },
      // home: Home(),
      theme: ThemeData(
        primarySwatch:Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0)
      ),
    );
  }
}


class Home extends StatelessWidget{

  @override
    Widget build(BuildContext context) {
       return DefaultTabController(
         length: 4,
         child: Scaffold(
         backgroundColor: Colors.grey[100],
        appBar: AppBar( 
          actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search
            ),
            tooltip: 'Search',
            onPressed: ()=>
             debugPrint('search button is pressed.')
          )
          ],
    
          title: Text("Orange"),
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
          elevation: 0,
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            // Icon(Icons.directions_bike,color: Colors.red,size: 128.0),
            LayoutsDemo(),
            sliverDemo(),
          ],
        ),
        drawer:  DrawerDemo() ,

        bottomNavigationBar: BottomNavigationBarDemo(),

        // endDrawer: Text('这也是'),
          ),
       );
    }
}
