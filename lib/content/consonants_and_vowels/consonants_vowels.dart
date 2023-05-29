import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnakanone/bloc/display_mode_bloc.dart';
import 'package:learnakanone/bloc/display_mode_event.dart';
import 'package:learnakanone/bloc/display_mode_state.dart';
import 'package:learnakanone/common/tab_name.dart';
import 'package:learnakanone/content/consonants_and_vowels/tab_consonant_vowels/tab_%C9%94.dart';
import 'package:learnakanone/content/consonants_and_vowels/tab_consonant_vowels/tab_%C9%9B.dart';
import 'package:learnakanone/content/consonants_and_vowels/tab_consonant_vowels/tab_a.dart';
import 'package:learnakanone/content/consonants_and_vowels/tab_consonant_vowels/tab_e.dart';
import 'package:learnakanone/content/consonants_and_vowels/tab_consonant_vowels/tab_i.dart';
import 'package:learnakanone/content/consonants_and_vowels/tab_consonant_vowels/tab_o.dart';
import 'package:learnakanone/content/consonants_and_vowels/tab_consonant_vowels/tab_u.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Mixtures extends StatefulWidget{
    Mixtures({super.key,
                        this.caps = true,
                        this.content = const Center(
                                         child:Text("Add Content")
                                         ),
                        this.title = "Pairs"
               });
    bool caps;
    Widget content;
    final String title;

  @override
  State<Mixtures> createState() => _MixturesState();
}

class _MixturesState extends State<Mixtures> {
 
  @override
  Widget build(BuildContext context){
    return BlocBuilder<DisplayModeBloc, DisplayModeState>(
      builder: (context, state) {

        bool dark = state.stateValue;

        return DefaultTabController(
          length: 7,
          child: Scaffold(
            extendBodyBehindAppBar:true,
            appBar: AppBar(
              leading:  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    tooltip: 'Next Icon',
                    onPressed: (){
                       context.read<DisplayModeBloc>().add(
                              HomePageEvent(!dark));
            
                    },
                  ),
              bottom:TabBar(
                      isScrollable: true,
                      indicator: BoxDecoration(
                        border: Border.all(width: 7, color: dark !=true? Colors.red:Colors.amber),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      
                      tabs: [
                        TabNames(word: "A", dark: dark,),
                        TabNames(word: "E", dark: dark,),
                        TabNames(word: "I", dark: dark,),
                        TabNames(word: "O", dark: dark,),
                        TabNames(word: "U", dark: dark,),
                        TabNames(word: "Ɔ", dark: dark,),
                        TabNames(word: "Ɛ", dark: dark,),
                        ],
                        labelPadding: const EdgeInsets.all(5),
                      ),
              title: Text(widget.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            fontSize: 35,
                            color:dark !=true? const Color.fromARGB(255, 237, 217, 206): const Color.fromARGB(255, 139, 227, 244),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Times New Roman',
                          ),
                                ),
                actions: <Widget>[
               
                IconButton(
                  icon: dark != true?const Icon(Icons.dark_mode,):const Icon(Icons.sunny),
                  tooltip: 'Next Icon',
                  onPressed: (){
                    if (dark == true){
                      context.read<DisplayModeBloc>().add(
                          const ConsonantsAndVowelsEvent(true));
                      //widget.dark = false;
                    }else{
                      context.read<DisplayModeBloc>().add(
                          const ConsonantsAndVowelsEvent(false));
                      //widget.dark = true;
                    }
                  },
                ), //IconButton
                ], //<Widget>[]
                backgroundColor: const Color.fromARGB(255, 204, 16, 3),
                elevation: 0.0,       
                  shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(                     
                        )),
        
                flexibleSpace: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: dark !=true? const AssetImage("assets/images/2.jpg"):const AssetImage("assets/images/6.jpg") ,
                                              fit: BoxFit.fill),
                      borderRadius: const BorderRadius.only(
                                                    ),
                                                  ),
                )
            ),
            body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                      Expanded(
                        child: Container(
                            color: dark == true? const Color.fromARGB(255, 16, 2, 32) : const Color.fromARGB(255, 203, 232, 136),
                              child: TabBarView(children: [
                                TabA(dark: dark,),
                                TabE(dark: dark,),
                                TabI(dark: dark,),
                                TabO(dark: dark,),
                                TabU(dark: dark,),
                                Tab11(dark: dark,),
                                Tab111(dark: dark,)
                              ]
                              ),
                            ),
                            )
                          ]
                        ),
                      ),
        );
      }
    );
              }
}