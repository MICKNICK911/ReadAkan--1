import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ContentButton extends StatelessWidget{
  ContentButton({super.key,
                this.dark = true,
                this.capital = false,
                this.sound = "a",
                this.word = "A",
                this.size = 100,
                this.padding = 7.0,
                this.fontsize = 60,
                this.fontcolorbright = const Color.fromARGB(255, 67, 1, 52),
                this.fontcolordark = const Color.fromARGB(255, 139, 227, 244),
                });

  final String description =  "Home Page";
  final bool dark;
  final bool capital;
  final player1 = AudioPlayer();
  final String sound;
  final String word;
  final double size;
  final double padding;
  final double fontsize;
  final Color fontcolorbright;
  final Color fontcolordark;



  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: ()async{
        await player1.play(AssetSource('audio/$sound.mp3'), volume: 1.0);
      },
      child: Card(
                                elevation: 5,
                                color: Colors.transparent,
                                margin: const EdgeInsets.fromLTRB(10, 0, 10, 8),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )),
                                
                                child: SizedBox(
                                  height: size,
                                  width: size,
                                  child: Row(
                                    children: [
                                
                                      Expanded(
                                        child: Container(
                                          //color: Colors.blue,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: dark !=true? const AssetImage("assets/images/2.jpg"):const AssetImage("assets/images/6.jpg") ,
                                              fit: BoxFit.fill),
                                                borderRadius: const BorderRadius.only( 
                                                  bottomLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20),
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                              
                                              ),
                                            ),
                                          child: Padding(
                                            padding: EdgeInsets.all(padding),
                                            child: Container(
                                              decoration:  BoxDecoration(
                                                  color: dark !=true? Colors.amberAccent :  const Color.fromARGB(255, 81, 1, 60),
                                                  borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(30),
                                                  bottomRight: Radius.circular(30),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(30),
                                                
                                                ),
                                              ),
                                              child: Center(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(capital == true?word:word.toLowerCase(),
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                    fontSize: fontsize,
                                                    color:dark !=true? fontcolorbright: fontcolordark,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: 'Times New Roman',
                                                  ),),
                                            
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                
                                ),
                              ),
                );
              }
            }