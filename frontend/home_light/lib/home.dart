import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget
{
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text('[Name light]'),
          MaterialButton(
            shape: CircleBorder(),
            child: Text('Light'),
            color: Colors.amber,
            onPressed: () { _turnOnLight(); },
          ),
          RaisedButton(
            onPressed: () { _savePreset(); },
            child: Text('Save Preset'),
          )
        ],
      ),
    );
  }

  void _turnOnLight()
  {
    Fluttertoast.showToast(msg: 'Lights have been turned on');
  }

  void _savePreset()
  {

  }
}