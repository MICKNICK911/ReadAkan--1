import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnakanone/bloc/display_mode_event.dart';
import 'package:learnakanone/bloc/display_mode_state.dart';
import "package:url_launcher/url_launcher.dart";

//? BLOC LOGIC
class DisplayModeBloc extends Bloc<DisplayModeEvent, DisplayModeState> {
  DisplayModeBloc() : super(const HomePageState(false)) {

    on<AlphabetEvent>(((event, emit) {
       //emit(const AlphabetState(true));
       final currentMode = event.value;
      if (currentMode == false) {
        emit(const AlphabetState(true));
      } else {
        emit(const AlphabetState(false));
         }
        }
      )
    );

    on<VowelsEvent>(((event, emit) {
       //emit(const VowelsState(true));
      final currentMode = event.value;
      if (currentMode == false) {
        emit(const VowelsState(true));
      } else {
        emit(const VowelsState(false));
         }
        }
      )
    );

    on<ConsonantsEvent>(((event, emit) {
       //emit(const ConsonantsState(true));
      final currentMode = event.value;
      if (currentMode == false) {
        emit(const ConsonantsState(true));
      } else {
        emit(const ConsonantsState(false));
         }
        }
      )
    );

    on<ConsonantsAndVowelsEvent>(((event, emit) {
       emit(const ConsonantsAndVowelsState(true));
      final currentMode = event.value;
      if (currentMode == false) {
        emit(const ConsonantsAndVowelsState(true));
      } else {
        emit(const ConsonantsAndVowelsState(false));
         }
        }
      )
    );

    on<DoubleConsonantsEvent>(((event, emit) {
       //emit(const DoubleConsonantsState(true));
       final currentMode = event.value;
      if (currentMode == false) {
        emit(const DoubleConsonantsState(true));
      } else {
        emit(const DoubleConsonantsState(false));
         }
        }
      )
    );

    on<HomePageEvent>(((event, emit) {
       //emit(const HomePageState(true));
       final currentMode = event.value;
      if (currentMode == false) {
        emit(const HomePageState(true));
      } else {
        emit(const HomePageState(false));
         }
        }
      )
    );

    on<CallEvent>(((event, emit) async {
      var url = Uri.parse("tel:+233545800158");
      final currentMode = event.value;

      if (await canLaunchUrl(url)) {
        await launchUrl(url);

         if (currentMode == false) {
        emit(CallState(true, alert: "successful"));
      } else {
        emit(CallState(false, alert: "successful"));
         }

      } else {
         if (currentMode == false) {
        emit(CallState(true, alert: "unsuccessful"));
      } else {
        emit(CallState(false, alert: "unsuccessful"));
         }
        throw "Operation Failed";    
      }

      
      if (currentMode == false) {
        emit(const HomePageState(true));
      } else {
        emit(const HomePageState(false));
         }
        }
      )
    );

  }
}