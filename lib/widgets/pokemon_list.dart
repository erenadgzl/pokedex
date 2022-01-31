import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/services/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

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
          return ListView.builder(
            itemCount: _pokemons.length,
            itemBuilder: (context, index) {
              var pokemon = _pokemons[index];
              return ListTile(
                title: Text(pokemon.name.toString()),
              );
            },
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
