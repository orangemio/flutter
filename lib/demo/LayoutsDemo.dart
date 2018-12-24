import 'package:flutter/material.dart';

class LayoutsDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // IconBadge(Icons.pool,size:128.0),
            // IconBadge(Icons.pool,size:128.0),
              ConstrainedBox(

                constraints: BoxConstraints(
                  minHeight: 200.0,
                  maxWidth: 200.0, 
                ),

                child: Container(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                ),
              )
              
              ],
            ),
      );
    }
}

class IconBadge extends StatelessWidget {

  final IconData icon;
  final double size;

  IconBadge(this.icon,{this.size = 32.0});//给他一个默认值
  
  @override
    Widget build(BuildContext context) {
      return Container(
        child:Icon(icon, size:size,color:Colors.white),
        width: this.size + 60,
        height: this.size + 60,
        color: Color.fromRGBO(3, 54, 255, 1.0),
      );
    }
}


