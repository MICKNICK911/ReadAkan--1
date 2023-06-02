import 'package:learnakanone/common/tab_list_row.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Tabny extends StatelessWidget{
  Tabny({super.key, this.dark = true});
  bool dark;
  String letter = "ny";

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
                              word1:"n",
                              word2:"y",
                              word3:letter,
                              sound1: "n",
                              sound2: "y",
                              sound3: "ny"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"a",
                              word1:letter,
                              word3:"${letter}a",
                              sound1: "ny_only",
                              sound2: "a",
                              sound3: "nya"
                            ),

                            TabListRow(
                              dark: dark,
                              word2:"e",
                              word1:letter,
                              word3:"${letter}e",
                              sound1: "ny_only",
                              sound2: "e",
                              sound3: "nye"
                            ),

                              TabListRow(
                              dark: dark,
                              word2:"i",
                              word1:letter,
                              word3:"${letter}i",
                              sound1: "ny_only",
                              sound2: "i",
                              sound3: "nyi"
                            ),

                           TabListRow(
                              dark: dark,
                              word2:"ɛ",
                              word1:letter,
                              word3:"$letterɛ",
                              sound1: "ny_only",
                              sound2: "3ea",
                              sound3: "ny3"
                            ),                          
                        ],),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }