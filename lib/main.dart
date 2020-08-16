import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
void playsound(int soundnumber){
  final pressed =AudioCache();
  pressed.play('note$soundnumber.wav');
}

Expanded buildkey({Color color,int soundnumber}){
  return  Expanded(
    child: FlatButton(
      onPressed: (){
        playsound(soundnumber);
      },
      color: color
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text('Xylophone',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 2.0
            ),),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundnumber :1),
              buildkey(color: Colors.orange, soundnumber :2),
              buildkey(color: Colors.yellow, soundnumber :3),
              buildkey(color: Colors.green, soundnumber :4),
              buildkey(color: Colors.blue, soundnumber :5),
              buildkey(color: Colors.indigo, soundnumber :6),
              buildkey(color: Colors.cyan, soundnumber :7)

            ],
          ),
        ),
      ),
    );
  }
}
