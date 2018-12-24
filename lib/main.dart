import 'package:flutter/material.dart';

void main(){

  runApp(App());
}


class App extends StatelessWidget{
  @override //覆盖父类build方法
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Orange"),
          elevation: 0,
        ),
        body: Hello(),
      ),
      theme: ThemeData(
        primarySwatch:Colors.yellow, 
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Center(child: Text("hello",textDirection:TextDirection.ltr,style: TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      color:Colors.black87,
    ),),);
    }
}