import 'package:flutter/material.dart';
import 'package:flutter_folmpr/Widgets/Auth/auth_widget.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromRGBO(19, 37, 65, 1)),
      ),
      home: const AuthWidget(),
    );
  }
}
