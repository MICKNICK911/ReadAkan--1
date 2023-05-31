import 'package:flutter/material.dart';
import 'package:learnakanone/dialogue/generic_content_dialog.dart';
import 'package:learnakanone/dialogue/generic_dialogue.dart';

Future<bool> showUpdateDialog(BuildContext context){
  return showGenericDialogT<bool>(
    context: context, 
    title: "Updating... ", 
    content: "Updating to ReadTwi 2 to view contents...", 
    optionBuilder: () => {
      "Cancel": false,
      "Continue": true
    }).then((value) => value ?? false);
}

Future<void> showUpdateDialogCC(BuildContext context, {required bool dark}){
  return showGenericDialogContent<void>(
    context: context, 
    dark: dark,
    // optionBuilder: () => {
    //   "Cancel": false,
    //   "Continue": true
    // }
    );
}