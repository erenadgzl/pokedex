import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _pokeballImageUrl = "images/pokeball.png";

    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            Constants.title,
            style: Constants.getTitleTextStyle(),
          ),
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
