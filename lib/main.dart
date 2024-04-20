import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_folmpr/Theme/app_Colors.dart';
import 'package:flutter_folmpr/Widgets/Auth/auth_widget.dart';
import 'package:flutter_folmpr/Widgets/Mainscreen/_mainScreen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.MainDarkBlue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            
            ),
        appBarTheme: const AppBarTheme(backgroundColor: AppColors.MainDarkBlue,),
      ),
      routes: {
        '/Auth': (context) => const AuthWidget(),
        '/Mainscreen': (context) => const MainscreenWidget(),
      },
      initialRoute: '/Auth',
    );
  }
}
