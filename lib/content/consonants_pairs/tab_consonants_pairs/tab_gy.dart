import 'package:learnakanone/common/tab_list_row.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Tabgy extends StatelessWidget{
  Tabgy({super.key, this.dark = true});
  bool dark;
  String letter = "gy";

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
                              word1:"g",
                              word2:"y",
                              word3:letter,
                              sound1: "g",
                              sound2: "y",
                              sound3: "gy"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"a",
                              word1:letter,
                              word3:"${letter}a",
                              sound1: "gy_only",
                              sound2: "a",
                              sound3: "gya"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"e",
                              word1:letter,
                              word3:"${letter}e",
                              sound1: "gy_only",
                              sound2: "e",
                              sound3: "gye"
                            ),

                              TabListRow(
                              dark: dark,
                              word2:"i",
                              word1:letter,
                              word3:"${letter}i",
                              sound1: "gy_only",
                              sound2: "i",
                              sound3: "gyi"
                            ),

                            //  TabListRow(
                            //   dark: dark,
                            //   word2:"o",
                            //   word1:letter,
                            //   word3:"${letter}o",
                            //   sound1: "gy_only",
                            //   sound2: "o",
                            //   sound3: "gyo"
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
                              sound1: "gy_only",
                              sound2: "3ea",
                              sound3: "gy3"
                              
                            ),

                           
                        ],),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }