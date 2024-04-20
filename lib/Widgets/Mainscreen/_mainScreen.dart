import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_folmpr/Widgets/Movie_list/movie_list_widget.dart';

class MainscreenWidget extends StatefulWidget {
  const MainscreenWidget({super.key});

  @override
  State<MainscreenWidget> createState() => _MainscreenWidgetState();
}

class _MainscreenWidgetState extends State<MainscreenWidget> {
  int _selectedTabs = 0;
  
 static final List<Widget> _widgetOptions = <Widget>[
  Text('News'),
  Move_ListWidget(),
  Text('Serials'),

 ];

  void OnselectedTab(int index){
    if(_selectedTabs == index) return;
    setState(() {
      _selectedTabs = index;
    });
  }
  @override
  final titstil = const TextStyle(color: Colors.white, fontSize: 25);
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'TMDB',
            style: titstil,
          ),
          centerTitle: true,
        ),
        body: Center(child: _widgetOptions[_selectedTabs],),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTabs,
          items: const [
            BottomNavigationBarItem(label: 'News', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Films', icon: Icon(Icons.movie)),
            BottomNavigationBarItem(label: 'Serials', icon: Icon(Icons.tv)),
          ],
        onTap: OnselectedTab,
        
        )
      );
  }
}
