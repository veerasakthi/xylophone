import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

void playSound(int songNum){
  final player = AudioCache();
  player.play('note$songNum.wav');
}

Expanded createWidgets(Color color,int songNum){
  return Expanded(
    child: FlatButton(
      onPressed: (){
        playSound(songNum);
      },
      color: color,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar:AppBar(
            title:Text('Play Music'),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                createWidgets(Colors.red,1),
                createWidgets(Colors.green,2),
                createWidgets(Colors.blue[100],3),
                createWidgets(Colors.orange,4),
                createWidgets(Colors.yellow,5),
                createWidgets(Colors.pink[200],6),
                createWidgets(Colors.purple,7),
              ],
            ),
          )
      ),
    );
  }
}