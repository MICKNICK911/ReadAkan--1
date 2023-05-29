import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
abstract class DisplayModeEvent {
  final bool value;
  const DisplayModeEvent(this.value);
}

//* Route Event #1
class AlphabetEvent extends DisplayModeEvent {
  const AlphabetEvent(bool value) : super(value);
}

//* Route Event #2
class VowelsEvent extends DisplayModeEvent {
  const VowelsEvent(bool value) : super(value);
}

//* Route Event #3
class ConsonantsEvent extends DisplayModeEvent {
  const ConsonantsEvent(bool value) : super(value);
}

//* Route Event #4
class ConsonantsAndVowelsEvent extends DisplayModeEvent {
  const ConsonantsAndVowelsEvent(bool value) : super(value);
}

//* Route Event #5
class DoubleConsonantsEvent extends DisplayModeEvent {
  const DoubleConsonantsEvent(bool value) : super(value);
}

//* Route Event #6
class HomePageEvent extends DisplayModeEvent {
  const HomePageEvent(bool value) : super(value);
}