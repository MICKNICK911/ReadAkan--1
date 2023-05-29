import 'package:learnakanone/common/tab_list_row.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Tabky extends StatelessWidget{
  Tabky({super.key, this.dark = true});
  bool dark;
  String letter = "ky";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
                Expanded(
                  child: Container(
                      color: dark == true? const Color.fromARGB(255, 16, 2, 32) : const Color.fromARGB(255, 203, 232, 136),
                        child: ListView(
                          padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
                          children: [
                            TabListRow(
                              dark: dark,
                              word1:"k",
                              word2:"y",
                              word3:letter,
                              sound1: "k",
                              sound2: "y",
                              sound3: "ky"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"a",
                              word1:letter,
                              word3:"${letter}a",
                              sound1: "ky_only",
                              sound2: "a",
                              sound3: "kya"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"e",
                              word1:letter,
                              word3:"${letter}e",
                              sound1: "ky_only",
                              sound2: "e",
                              sound3: "kye"
                            ),

                              TabListRow(
                              dark: dark,
                              word2:"i",
                              word1:letter,
                              word3:"${letter}i",
                              sound1: "ky_only",
                              sound2: "i",
                              sound3: "kyi"
                            ),

                            //  TabListRow(
                            //   dark: dark,
                            //   word2:"o",
                            //   word1:letter,
                            //   word3:"${letter}o",
                            // ),

                            // TabListRow(
                            //   dark: dark,
                            //   word2:"u",
                            //   word1:letter,
                            //   word3:"${letter}u",
                            // ),

                            //  TabListRow(
                            //   dark: dark,
                            //   word2:"ɔ",
                            //   word1:letter,
                            //   word3:"$letterɔ",
                            // ),

                           TabListRow(
                              dark: dark,
                              word2:"ɛ",
                              word1:letter,
                              word3:"$letterɛ",
                              sound1: "ky_only",
                              sound2: "3ea",
                              sound3: "ky3"
                            ),                         
                        ],),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }