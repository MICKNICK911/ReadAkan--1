import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnakanone/bloc/display_mode_bloc.dart';
import 'package:learnakanone/bloc/display_mode_event.dart';
import 'package:learnakanone/bloc/display_mode_state.dart';
import 'package:learnakanone/common/content_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Vowels extends StatefulWidget{
    Vowels({super.key,
                        
                        this.caps = true,
                        this.title = "Vowels"
               });

    bool caps;
    final String title;

  @override
  State<Vowels> createState() => _VowelsState();
}

class _VowelsState extends State<Vowels> {
 
  @override
  Widget build(BuildContext context){
    return BlocBuilder<DisplayModeBloc, DisplayModeState>(
      builder: (context, state) {

        bool dark = state.stateValue;

        return Scaffold(
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
              OutlinedButton(
                onPressed: (){
                  setState(() {
                    if(widget.caps == true){
                      widget.caps = false;
                    }else{
                      widget.caps = true;
                    }
                  });
                },
                style: OutlinedButton.styleFrom(
                  elevation: 0,
                 // side: const BorderSide(color: Colors.black, width: 3),
                  shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                ),
                child:Container(
                   decoration: BoxDecoration(
                    color: dark !=true? Colors.amber:const Color.fromARGB(255, 3, 4, 48),
                    //image: DecorationImage(image: AssetImage("assets/images/2.jpg"),
                                            //fit: BoxFit.fill),
                    
                    borderRadius: const BorderRadius.only(
                                                    bottomLeft: Radius.circular(10),
                                                    bottomRight: Radius.circular(10),
                                                    topLeft: Radius.circular(10),
                                                    topRight:Radius.circular(10), 
                                                  ),
                                                ),
                    //color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.caps == true? "Capital":"Small",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                fontSize: 15,
                                color:dark !=true? const Color.fromARGB(255, 67, 1, 52): const Color.fromARGB(255, 139, 227, 244),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Raleway',
                              ),
                              ),
                  ),
                ),
              ), //IconButton
              IconButton(
                icon: dark != true?const Icon(Icons.dark_mode,):const Icon(Icons.sunny),
                tooltip: 'Next Icon',
                onPressed: (){
                  if (dark == true){
                      context.read<DisplayModeBloc>().add(
                          const VowelsEvent(true));
                      //widget.dark = false;
                    }else{
                      context.read<DisplayModeBloc>().add(
                          const VowelsEvent(false));
                      //widget.dark = true;
                    }
                },
              ), //IconButton
              ], //<Widget>[]
		    backgroundColor: const Color.fromARGB(255, 204, 16, 3),
		    elevation: 0.0,

              shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),

              flexibleSpace: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: dark !=true? const AssetImage("assets/images/2.jpg"):const AssetImage("assets/images/6.jpg") ,
                                            fit: BoxFit.fill),
                    borderRadius: const BorderRadius.only(
                                                    bottomLeft: Radius.circular(30),
                                                    bottomRight: Radius.circular(30),
                                                  ),
                                                ),
              )
          ),
          body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                    Expanded(
                      child: Container(
                          color: dark == true? const Color.fromARGB(255, 16, 2, 32) : const Color.fromARGB(255, 203, 232, 136),
                            child: GridView.count(
  primary: false,
  padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[

        ContentButton(dark: dark,
                      capital: widget.caps,
                      word: "A",
                      sound:"a"),

        ContentButton(dark: dark,
                      capital: widget.caps,
                      word: "E",
                      sound:"e"),

        ContentButton(dark: dark,
                      capital: widget.caps,
                      word: "I",
                      sound:"i"),

        ContentButton(dark: dark,
                      capital: widget.caps,
                      word: "O",
                      sound:"o"),

        ContentButton(dark: dark,
                      capital: widget.caps,
                      word: "U",
                      sound:"u"),

        ContentButton(dark: dark,
                      capital: widget.caps,
                      word: "Ɔ",
                      sound:"oi"),

        ContentButton(dark: dark,
                      capital: widget.caps,
                      word: "Ɛ",
                      sound:"3ea"),   
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