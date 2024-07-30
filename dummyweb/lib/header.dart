import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void header() {

}



class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var appState = context.watch<>();
    List<NavigationDestination> destinations = [NavigationDestination(icon: Icon(IconData(1)), label: "data 1"),
      NavigationDestination(icon: Icon(IconData(2)), label: "data 2"),
      NavigationDestination(icon: Icon(IconData(3)), label: "data 3")];
    return NavigationBar(destinations: destinations);
  }
}