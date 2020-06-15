import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({
    this.title,
    this.icon
  });
}

List <NavigationModel> navigationItems = [
  NavigationModel(title: "Pé na estrada", icon: Icons.traffic),
  NavigationModel(title: "Tô de boa", icon: Icons.departure_board ),
  NavigationModel(title: "Pontuação", icon: Icons.notifications),
  NavigationModel(title: "Ajuda", icon: Icons.help),
];