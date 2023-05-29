import 'package:learnakanone/bloc/display_mode_bloc.dart';
import 'package:learnakanone/bloc/display_mode_event.dart';
import 'package:learnakanone/bloc/display_mode_state.dart';
import 'package:learnakanone/common/home_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnakanone/dialogue/update_dialog.dart';
// ignore: must_be_immutable
class MyHomeApp extends StatefulWidget{
  const MyHomeApp({super.key});

  @override
  State<MyHomeApp> createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  final String description =  "Home Page";

  @override
  Widget build(BuildContext context){
    return BlocBuilder<DisplayModeBloc, DisplayModeState>(
      builder: (context, state) { 

        bool dark = state.stateValue;

      return Scaffold(
      extendBodyBehindAppBar:true,
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: const Color.fromARGB(255, 74, 7, 45),
        //centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
          child: Text("AKWAABA",
                              style: TextStyle(
                              fontSize: 50,
                              color: Color.fromARGB(255, 242, 238, 234),
                              fontWeight: FontWeight.w900,
                              fontFamily: 'courier',
                            ),),
        ),
        shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(0),
                    // topLeft: Radius.circular(30),
                    // topRight: Radius.circular(30),
                  )),

        flexibleSpace: Container(
          decoration: BoxDecoration(
          image: DecorationImage(image: dark !=true? const AssetImage("assets/images/2.jpg"):const AssetImage("assets/images/6.jpg") ,
            fit: BoxFit.fill),
              borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(80),
                                              bottomRight: Radius.circular(180),
                                            ),
                                          ),
         ),
          actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 58, 0, 0),
            child: dark != true? IconButton(
              icon:  const Icon(Icons.dark_mode_outlined, 
                                     color: Color.fromARGB(121, 245, 65, 209),
                                     size: 35,),
                                     tooltip: 'Back Icon',
                                     onPressed: (){
                                       context.read<DisplayModeBloc>().add(
                                            const HomePageEvent(false));
                                      // setState(() {
                                      //   widget.dark = true;
                                      // });
                                     },
                                  ) :

            IconButton(
              icon:  const Icon(Icons.sunny, 
                                     color: Color.fromARGB(121, 245, 65, 209),
                                     size: 35,),
                                     tooltip: 'Back Icon',
                                     onPressed: (){
                                        context.read<DisplayModeBloc>().add(
                                            const HomePageEvent(true));
                                      // setState(() {
                                      //   widget.dark = false;
                                      // });
                                     },
                                  )
          ), //IconButton
         //IconButton
          ], 
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
                Expanded(
                  child: Container(
                      color: dark == true? const Color.fromARGB(255, 16, 2, 32) : const Color.fromARGB(255, 203, 232, 136),
                        child: Column(
                          children: [
                             const SizedBox(height: 150,),


                             Padding(
                               padding: const EdgeInsets.fromLTRB(0, 0, 220, 0),
                               child: Text("LESSONS",
                            style: TextStyle(
                            fontSize: 15,
                            color: dark == true? const Color.fromARGB(255, 246, 126, 5) :const Color.fromARGB(255, 67, 34, 1) ,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Times New Roman',
                          ),),
                             ),
                        
                            Expanded(
                              child: ListView(
                                padding: const EdgeInsets.all(0),
                                children: [
                                GestureDetector(
                                  onTap: () {
                                   context.read<DisplayModeBloc>().add(
                                     AlphabetEvent(!dark));
                                  },
                                  child: ContentWidget(dark: dark,
                                                leadnum: "1",
                                                title: "Nsɛmfua",
                                                subtitle: "Alphabets",),
                                ),
                                GestureDetector(
                                  onTap: () {
                                     context.read<DisplayModeBloc>().add(
                                     VowelsEvent(!dark));
                                  },
                                  child: ContentWidget(dark: dark,
                                                leadnum: "2",
                                                title: "Ano Nnyegyeɛ",
                                                subtitle: "Vowels",),
                                ),
                                GestureDetector(
                                  onTap: () {
                                       context.read<DisplayModeBloc>().add(
                                     ConsonantsEvent(!dark));
                                  },
                                  child: ContentWidget(dark: dark,
                                                leadnum:"3",
                                                title: "Anum Nnyegyeɛ",
                                                subtitle: "Consonants",),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.read<DisplayModeBloc>().add(
                                     ConsonantsAndVowelsEvent(!dark));
                                  },
                                  child: ContentWidget(dark: dark,
                                                leadnum: "4",
                                                title: "Ano ne Anum Nnyegyeɛ",
                                                subtitle: "Pairing",),
                                ),
                                
                                GestureDetector(
                                  onTap: () {
                                     context.read<DisplayModeBloc>().add(
                                     DoubleConsonantsEvent(!dark));
                                  },
                                  child: ContentWidget(dark: dark,
                                                leadnum: "5",
                                                title: "Anum Nnyegyeɛ 2",
                                                subtitle: "2 Consonants  ",),
                                ),

                                GestureDetector(
                                  onTap: () async {
                                    final shouldDelete = await showUpdateDialog(context);
                                      if (shouldDelete) {
                                        //onDeleteNote(note);
                                      }
                                  },
                                  child: ContentWidget(dark: dark,
                                                leadnum: "6",
                                                title: "Nhwɛsoɔ \n Ahorow",
                                                subtitle: "Examples",),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                     //final shouldDelete = await showUpdateDialogCC(context, dark: dark);
                                     await showUpdateDialogCC(context, dark: dark);
                                      // if (shouldDelete) {
                                      //   //onDeleteNote(note);
                                      // }
                                  },
                                  child: ContentWidget(dark: dark,
                                                leadnum: "7",
                                                title: "Akenkan",
                                                subtitle: "Reading",),
                                ),
                              ],
                              ),
                            )
                          ],
                        ),
                        ),
                      ),
                    ],
                  ),
                );
                }
                );
              }
            }