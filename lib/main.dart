import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnakanone/bloc/display_mode_bloc.dart';
import 'package:learnakanone/bloc/display_mode_state.dart';
import 'package:learnakanone/content/alphabets.dart';
import 'package:learnakanone/content/consonants.dart';
import 'package:learnakanone/content/consonants_pairs/consonants_pairs.dart';
import 'package:learnakanone/content/vowels.dart';
import 'package:learnakanone/homepage.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'content/consonants_and_vowels/consonants_vowels.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AudioCache().loadAll(['audio/a.mp3',
                              ]);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: "Test App",
        debugShowCheckedModeBanner: false,
      
      home: BlocProvider(
              create: (context) => DisplayModeBloc(),
              child:const Mainpage()),     
          );
        } 
      }

  class Mainpage extends StatelessWidget {
    const Mainpage({super.key});

   @override
  Widget build(BuildContext context) {
    //context.read<AuthBloc>().add(const AuthEventInitialize());
    return BlocConsumer<DisplayModeBloc, DisplayModeState>(
      listener: (context, state) {},

      builder: (context, state){
        if (state is AlphabetState) {
          return Alphabets();
        } else if (state is HomePageState) {
          return const MyHomeApp();
        } else if (state is VowelsState) {
          return Vowels();
        }else if (state is ConsonantsState) {
          return Consonants();
        }else if (state is ConsonantsAndVowelsState) {
          return Mixtures();
        }else if (state is DoubleConsonantsState) {
          return DoubleConsonants();
        }else{
          return const MyHomeApp();
        }
      }
    );  
  }
}




  
































