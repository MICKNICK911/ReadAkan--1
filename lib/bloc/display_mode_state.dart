import 'package:flutter/material.dart';

@immutable
abstract class DisplayModeState{
  final bool stateValue;
  const DisplayModeState(this.stateValue);
}
//! Route #1
class AlphabetState extends DisplayModeState {
  const AlphabetState(bool outputValue) : super(outputValue);
}

//! Route #2
class VowelsState extends DisplayModeState {
  const VowelsState(bool outputValue) : super(outputValue);
}

//! Route #3
class ConsonantsState extends DisplayModeState {
  const ConsonantsState(bool outputValue) : super(outputValue);
}

//! Route #4
class ConsonantsAndVowelsState extends DisplayModeState {
  const ConsonantsAndVowelsState(bool outputValue) : super(outputValue);
}

//! Route #5
class DoubleConsonantsState extends DisplayModeState {
  const DoubleConsonantsState(bool outputValue) : super(outputValue);
}

//! Route #6
class HomePageState extends DisplayModeState {
  const HomePageState(bool outputValue) : super(outputValue);
}

//! Route #7
class CallState extends DisplayModeState {
  CallState(bool outputValue, {required this.alert}) : super(outputValue);
  String alert;
}