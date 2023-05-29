import 'package:learnakanone/common/content_button.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class TabListRow
 extends StatelessWidget{
  TabListRow({super.key, this.dark = false,
                   this.size = 65, 
                   this.padding = 3,
                   this.fontsize = 30,
                   this.word1 = "a",
                   this.word2 = "a",
                   this.word3 = "a",
                   this.sound1 = "a",
                   this.sound2 = "a",
                   this.sound3 = "a",});

  bool dark;
  final double size;
  final double padding;
  final double fontsize;
  final String word1;
  final String word2;
  final String word3;
  final String sound1;
  final String sound2;
  final String sound3;



  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ContentButton(size: size,
                      fontsize: fontsize, 
                      padding: 3,  
                      dark: dark, 
                      word: word1, 
                      sound: sound1,),

        Text("+",
      style: TextStyle(
      fontSize: 50,
      color: dark == true?const Color.fromARGB(255, 242, 238, 234):const Color.fromARGB(255, 32, 23, 14),
      fontWeight: FontWeight.w900,
      fontFamily: 'courier',
    ),),

        ContentButton(size: size,
                      fontsize: fontsize, 
                      padding: 3,  
                      dark: dark, 
                      word: word2, 
                      sound: sound2,),

        ContentButton(size: 80,
                      fontsize: fontsize, 
                      padding: 3, 
                      dark: dark, 
                      word:word3, 
                      sound: sound3,
                      fontcolorbright: const Color.fromARGB(255, 214, 24, 10),
                      fontcolordark: const Color.fromARGB(255, 217, 196, 9),),

                ],
                );
              }
            }