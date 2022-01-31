import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _pokeballImageUrl = "images/pokeball.png";

    return Stack(
      children: [
        const Align(
          alignment: Alignment.topLeft,
          child: Text("Pokedex"),
        ),
        Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              _pokeballImageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.fitWidth,
            ))
      ],
    );
  }
}
