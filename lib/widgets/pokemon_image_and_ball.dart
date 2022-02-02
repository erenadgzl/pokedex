import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokemonImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;

  const PokemonImageAndBall({Key? key, required this.pokemon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _pokeballImageUrl = "images/pokeball.png";

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            _pokeballImageUrl,
            width: UIHelper.calculatePokemonImageAndBallSize(),
            height: UIHelper.calculatePokemonImageAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            imageUrl: pokemon.img ?? '',
            errorWidget: (context, url, error) => const Icon(Icons.ac_unit),
            width: UIHelper.calculatePokemonImageAndBallSize(),
            height: UIHelper.calculatePokemonImageAndBallSize(),
            fit: BoxFit.fitHeight,
            placeholder: (context, url) => CircularProgressIndicator(
              color: UIHelper.getColorFromType(pokemon.type![0]),
            ),
          ),
        ),
      ],
    );
  }
}
