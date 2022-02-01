import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String title = "Pokedex";

  static TextStyle getTitleTextStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48);
  }

  static TextStyle getPokemonNameStyle() {
    return const TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30);
  }

  static TextStyle getPokemonChipStyle() {
    return const TextStyle(color: Colors.white, fontSize: 20);
  }
}
