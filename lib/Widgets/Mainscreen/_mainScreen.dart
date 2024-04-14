import 'package:flutter/material.dart';

class MainscreenWidget extends StatefulWidget {
  const MainscreenWidget({super.key});

  @override
  State<MainscreenWidget> createState() => _MainscreenWidgetState();
}

class _MainscreenWidgetState extends State<MainscreenWidget> {
  @override
  final titstil = const TextStyle(color: Colors.white);
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text('TMDB',style:titstil,),),);
  }
}