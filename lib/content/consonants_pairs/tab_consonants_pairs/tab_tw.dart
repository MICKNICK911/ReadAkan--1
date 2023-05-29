import 'package:learnakanone/common/tab_list_row.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Tabtw extends StatelessWidget{
  Tabtw({super.key, this.dark = true});
  bool dark;
  String letter = "tw";

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
                              word1:"t",
                              word2:"w",
                              word3:letter,
                              sound1: "t",
                              sound2: "w",
                              sound3: "tw"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"a",
                              word1:letter,
                              word3:"${letter}a",
                              sound1: "tw_only",
                              sound2: "a",
                              sound3: "twa"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"e",
                              word1:letter,
                              word3:"${letter}e",
                              sound1: "tw_only",
                              sound2: "e",
                              sound3: "twe"
                            ),

                              TabListRow(
                              dark: dark,
                              word2:"i",
                              word1:letter,
                              word3:"${letter}i",
                              sound1: "tw_only",
                              sound2: "i",
                              sound3: "twi"
                            ),

                             TabListRow(
                              dark: dark,
                              word2:"o",
                              word1:letter,
                              word3:"${letter}o",
                              sound1: "tw_only",
                              sound2: "o",
                              sound3: "two"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"u",
                              word1:letter,
                              word3:"${letter}u",
                              sound1: "tw_only",
                              sound2: "u",
                              sound3: "twu"
                            ),

                             TabListRow(
                              dark: dark,
                              word2:"ɔ",
                              word1:letter,
                              word3:"$letterɔ",
                              sound1: "tw_only",
                              sound2: "oi",
                              sound3: "twoi"
                            ),

                           TabListRow(
                              dark: dark,
                              word2:"ɛ",
                              word1:letter,
                              word3:"$letterɛ",
                              sound1: "tw_only",
                              sound2: "3ea",
                              sound3: "tw3"
                            ),                     
                        ],),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }