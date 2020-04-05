import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_draw/flutter_draw.dart';


class DrawExample extends StatefulWidget {
  @override
  _DrawExampleState createState() => _DrawExampleState();
}

class _DrawExampleState extends State<DrawExample> {

  File _drawImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _drawImage != null ? Image.file(_drawImage) : Container(),
              RaisedButton(
                onPressed: (){
                  getDrawing();
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Draw"),
              )
            ],),
        ),
      ),
    );
  }

  Future<void> getDrawing()  {
    final getDraw =   Navigator.push(context, MaterialPageRoute(
        builder: (context){
          return HomePage();
        }
    )).then((getDraw){
      if(getDraw != null){
        setState(() {
          _drawImage =  getDraw;
        });
      }
    }).catchError((er){print(er);});

  }
}
