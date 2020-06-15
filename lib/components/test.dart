import 'package:flutter/material.dart';
import 'package:frontend/commons/collapsing_navigation_drawer_widget.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trilha de Apoio"),
      ),
      drawer: CollapsingNavigationDrawer(),
      body: Stack(
        children: <Widget>[
          Container(color: Colors.white,),
          CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}