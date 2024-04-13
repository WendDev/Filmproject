
import 'package:flutter/material.dart';

  abstract class Appbuttons{
  static final loginbutton = ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.blue),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
        padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 19)));

   static final ResetButton = ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.blue),
        textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)));

}