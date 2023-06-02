import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnakanone/bloc/display_mode_bloc.dart';
import 'package:learnakanone/bloc/display_mode_event.dart';
import 'package:learnakanone/bloc/display_mode_state.dart';
import 'package:learnakanone/common/tab_name.dart';
import 'package:learnakanone/content/consonants_pairs/tab_consonants_pairs/tab_dw.dart';
import 'package:learnakanone/content/consonants_pairs/tab_consonants_pairs/tab_gy.dart';
import 'package:learnakanone/content/consonants_pairs/tab_consonants_pairs/tab_hw.dart';
import 'package:learnakanone/content/consonants_pairs/tab_consonants_pairs/tab_hy.dart';
import 'package:learnakanone/content/consonants_pairs/tab_consonants_pairs/tab_kw.dart';
import 'package:learnakanone/content/consonants_pairs/tab_consonants_pairs/tab_ky.dart';
import 'package:learnakanone/content/consonants_pairs/tab_consonants_pairs/tab_nw.dart';
import 'package:learnakanone/content/consonants_pairs/tab_consonants_pairs/tab_ny.dart';
import 'package:learnakanone/content/consonants_pairs/tab_consonants_pairs/tab_tw.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoubleConsonants extends StatefulWidget{
    DoubleConsonants({super.key,
                        this.caps = true,
                        this.content = const Center(
                                         child:Text("Add Content")
                                         ),
                        this.title = "Consonants"
               });
    bool caps;
    Widget content;
    final String title;

  @override
  State<DoubleConsonants> createState() => _DoubleConsonantsState();
}

class _DoubleConsonantsState extends State<DoubleConsonants> {
 
  @override
  Widget build(BuildContext context){
    return BlocBuilder<DisplayModeBloc, DisplayModeState>(
      builder: (context, state) {

        bool dark = state.stateValue;

        return DefaultTabController(
          length: 9,
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
                        TabNames(word: "dw", dark: dark, fontSize: 20,),
                        TabNames(word: "kw", dark: dark, fontSize: 20,),
                        TabNames(word: "hw", dark: dark, fontSize: 20,),
                        TabNames(word: "tw", dark: dark, fontSize: 20,),
                        TabNames(word: "nw", dark: dark, fontSize: 20,),
                        TabNames(word: "gy", dark: dark, fontSize: 20,),
                        TabNames(word: "hy", dark: dark, fontSize: 20,),
                        TabNames(word: "ky", dark: dark, fontSize: 20,),
                        TabNames(word: "ny", dark: dark, fontSize: 20,),
                        
                        ],
                        //labelColor: Colors.amber,
                        //padding: EdgeInsets.all(20),
                        labelPadding: const EdgeInsets.all(5),
                      ),
              title: Text(widget.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            fontSize: 24,
                            color:dark !=true? const Color.fromARGB(255, 237, 217, 206): const Color.fromARGB(255, 139, 227, 244),
                            fontWeight: FontWeight.w800,
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
                          const DoubleConsonantsEvent(true));
                      //widget.dark = false;
                    }else{
                      context.read<DisplayModeBloc>().add(
                          const DoubleConsonantsEvent(false));
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
                                   Tabdw(dark: dark,),
                                   Tabkw(dark: dark,),
                                   Tabhw(dark: dark,),
                                   Tabtw(dark: dark,),
                                   Tabnw(dark: dark,),
                                   Tabgy(dark: dark,),
                                   Tabhy(dark: dark,),
                                   Tabky(dark: dark,),
                                   Tabny(dark: dark,),
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