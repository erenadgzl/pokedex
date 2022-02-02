import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/services/pokedex_api.dart';
import 'package:pokedex/widgets/pokelist_item.dart';

class PokemonList extends StatefulWidget {
  PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonsFuture;

  @override
  void initState() {
    super.initState();
    _pokemonsFuture = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonsFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _pokemons = snapshot.data!;
          return GridView.builder(
            itemCount: _pokemons.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
            itemBuilder: (context, index) =>
                PokeListItem(pokemon: _pokemons[index]),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Hata!"),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
