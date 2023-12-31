import 'package:flutter/material.dart';
import 'footbal_player.dart';
import 'players_grid_page.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PlayersGridPage(),
    );
  }
}