import 'package:flutter/material.dart';
import 'package:learnakanone/dialogue/generic_content_dialog.dart';
import 'package:learnakanone/dialogue/generic_dialogue.dart';
//first update alert
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
//call Error alert
Future<bool> showErrorCallDialog(BuildContext context){
  return showGenericDialogT<bool>(
    context: context, 
    title: "Call Error", 
    content: "Sorry Call Failed", 
    optionBuilder: () => {
      "Ok": null,
    }).then((value) => value ?? false);
}

//update dialog with content
Future<void> showUpdateDialogCC(BuildContext context, {required bool dark, required Function() call}){
  return showGenericDialogContent<void>(
    context: context, 
    dark: dark,
    call: call
    );
}