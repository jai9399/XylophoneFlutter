import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main(){
    runApp(Xylo());
}

Widget buildpart(int a,Color b){
     return Expanded(
                     child:FlatButton(
                       color: b,
                        onPressed: (){
                          final player = AudioCache();
                          player.play('note$a.wav');
                        },
                      ),
                      );
}
class Xylo extends StatelessWidget{
    Widget build(BuildContext context){
       return MaterialApp(
          home:Scaffold(
            body:SafeArea(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                   children: <Widget>[
                     buildpart(1,Colors.red),
                     buildpart(2,Colors.orange),
                     buildpart(3,Colors.yellow),
                     buildpart(4,Colors.green),
                     buildpart(5,Colors.teal),
                     buildpart(6,Colors.blue),
                     buildpart(7,Colors.purple),
                   ],
                )
            )
          )
       );
    }

}
