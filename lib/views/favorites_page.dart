import 'package:first_app/views/item_favorite.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/favorite_jokes_provider.dart';

class FavoritesPage extends HookConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jokesProvider = ref.watch(favoriteJokesProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
        ),
        body: ListView.builder(
          itemCount: jokesProvider.length,
          itemBuilder: (context, position) {
            return FavoriteItemWidget(
              jokeText: jokesProvider[position],
            );
          },
        ));
  }
}
