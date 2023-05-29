import 'package:flutter/material.dart';
// ignore: must_be_immutable
class TabNames extends StatelessWidget{
  TabNames({super.key, this.dark = false, this.word = "A", this.fontSize = 25});

  bool dark;
  String word;
  final double fontSize;


  @override
  Widget build(BuildContext context){
    return Container(
                width:80 ,
                height: 40,
                 decoration: BoxDecoration(
                  color: dark !=true? Colors.amber:const Color.fromARGB(255, 3, 4, 48),
                  //image: DecorationImage(image: AssetImage("assets/images/2.jpg"),
                                          //fit: BoxFit.fill),
                  
                  borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(7),
                                                  bottomRight: Radius.circular(7),
                                                  topLeft: Radius.circular(7),
                                                  topRight:Radius.circular(7), 
                                                ),
                                              ),
                  //color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(word,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                              fontSize: fontSize,
                              color:dark !=true? const Color.fromARGB(255, 67, 1, 52): const Color.fromARGB(255, 139, 227, 244),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Times New Roman',
                            ),
                            ),
                  ),
                );
              }
            }