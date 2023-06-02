import 'package:learnakanone/common/tab_list_row.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Tabkw extends StatelessWidget{
  Tabkw({super.key, this.dark = true});
  bool dark;
  String letter = "kw";

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
                              word2:"w",
                              word3:letter,
                              sound1: "k",
                              sound2: "w",
                              sound3: "kw"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"a",
                              word1:letter,
                              word3:"${letter}a",
                              sound1: "kw_only",
                              sound2: "a",
                              sound3: "kwa"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"e",
                              word1:letter,
                              word3:"${letter}e",
                              sound1: "kw_only",
                              sound2: "e",
                              sound3: "kwe"
                            ),

                              TabListRow(
                              dark: dark,
                              word2:"i",
                              word1:letter,
                              word3:"${letter}i",
                              sound1: "kw_only",
                              sound2: "i",
                              sound3: "kwi"
                            ),

                           TabListRow(
                              dark: dark,
                              word2:"ɛ",
                              word1:letter,
                              word3:"$letterɛ",
                              sound1: "kw_only",
                              sound2: "3ea",
                              sound3: "kw3"
                            ),                          
                        ],),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }