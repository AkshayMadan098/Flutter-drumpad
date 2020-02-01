import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
//import 'package:flutter/services.dart';
  main(){
    runApp(MyApp());
  }
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  static AudioCache player=AudioCache();

  Widget buildButton(Color color,  int id) {
    return Expanded(
        child: MaterialButton(
          highlightColor: Colors.black,
      color: color,
      height: 120,
     
      onPressed: () =>buttonPressed(id),
    ));
  }
  buttonPressed(id) {
    setState(() {
      switch (id) {
        case 1:
                player.play("one.mp3");
                break;
                case 2:
                player.play("two.mp3");
                break;
                case 3:
                player.play("three.mp3");
                break;
              case 4:
                player.play("four.mp3");
                break;
                case 5:
                player.play("fv.mp3");
                break;
                case 6:
                player.play("eighth.mp3");
                break;
                case 7:
                player.play("three.mp3");
                break;
                case 8:
                player.play("eighth.mp3");
                break;
                case 9:
                player.play("one.mp3");
                break;
                case 10:
                player.play("one.mp3");
                break;
              
          break;
        default:
      }
    });
  }
  @override
   
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Drumpad",
      home: Scaffold(
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                buildButton(Color(0xffFF3E4D), 1),
                Padding(padding: EdgeInsets.all(10),),
                buildButton(Color(0xff0A79DF), 2),
                
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: <Widget>[
                  buildButton(Color(0xff43BE31), 3),
                  Padding(padding: EdgeInsets.all(10),),
                  buildButton(Color(0xffEA7773), 4),
                  
                  
                  ],
              ),
            ),
             
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                buildButton(Color(0xffEEC213), 5),
                Padding(padding: EdgeInsets.all(10),),
                buildButton(Color(0xffB83227), 6),
                
                ],
            ),
             ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: <Widget>[
                  buildButton(Color(0xff2475B0), 7),
                  Padding(padding: EdgeInsets.all(10),),
                  buildButton(Color(0xff2ecc72), 8),
                  ],
            ),
             ),
             
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                 
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                buildButton(Color(0xff2475B), 9),
                Padding(padding: EdgeInsets.all(10),),
                buildButton(Color(0xffB83227), 10),
               
                ],
            ),
             )
          ],
        ),
      ),
      
    );
  }
}