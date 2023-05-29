import 'package:learnakanone/common/tab_list_row.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Tab11 extends StatelessWidget{
  Tab11({super.key, this.dark = true});
  bool dark;
  String letter = "ɔ";

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
                              word1:"b",
                              word2:letter,
                              word3:"b$letter",
                              sound1: "b",
                              sound2: "oi",
                              sound3: "boi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"d",
                              word2:letter,
                              word3:"d$letter",
                              sound1: "d",
                              sound2: "oi",
                              sound3: "doi",
                            ),

                             TabListRow(
                              dark: dark,
                              word1:"f",
                              word2:letter,
                              word3:"f$letter",
                              sound1: "f",
                              sound2: "oi",
                              sound3: "foi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"g",
                              word2:letter,
                              word3:"g$letter",
                              sound1: "g",
                              sound2: "oi",
                              sound3: "goi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"h",
                              word2:letter,
                              word3:"h$letter",
                              sound1: "h",
                              sound2: "oi",
                              sound3: "hoi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"k",
                              word2:letter,
                              word3:"k$letter",
                              sound1: "k",
                              sound2: "oi",
                              sound3: "koi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"l",
                              word2:letter,
                              word3:"l$letter",
                              sound1: "l",
                              sound2: "oi",
                              sound3: "loi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"m",
                              word2:letter,
                              word3:"m$letter",
                              sound1: "m",
                              sound2: "oi",
                              sound3: "moi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"n",
                              word2:letter,
                              word3:"n$letter",
                              sound1: "n",
                              sound2: "oi",
                              sound3: "noi",
                              
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"p",
                              word2:letter,
                              word3:"p$letter",
                              sound1: "p",
                              sound2: "oi",
                              sound3: "poi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"r",
                              word2:letter,
                              word3:"r$letter",
                              sound1: "r",
                              sound2: "oi",
                              sound3: "roi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"s",
                              word2:letter,
                              word3:"s$letter",
                              sound1: "s",
                              sound2: "oi",
                              sound3: "soi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"t",
                              word2:letter,
                              word3:"t$letter",
                              sound1: "t",
                              sound2: "oi",
                              sound3: "toi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"w",
                              word2:letter,
                              word3:"w$letter",
                              sound1: "w",
                              sound2: "oi",
                              sound3: "woi",
                            ),

                            TabListRow(
                              dark: dark,
                              word1:"y",
                              word2:letter,
                              word3:"y$letter",
                              sound1: "y",
                              sound2: "oi",
                              sound3: "yoi",
                            ),
                        ],),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }