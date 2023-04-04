import 'package:first_app/models/dummy_joke.dart';
import 'package:first_app/views/item_favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../interactors/favorites_interactor.dart';
import '../providers/favorite_jokes_provider.dart';

class FavoritesPage extends HookConsumerWidget {
  final FavoritesInteractor interactor = FavoritesInteractor();

  FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // get the most current data
    ref.invalidate(favoriteJokesProvider);

    final jokesProvider = ref.watch(favoriteJokesProvider);

    return FutureBuilder<List<DummyJoke>>(
      future: jokesProvider,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
              appBar: AppBar(
                title: Text(AppLocalizations.of(context)!.favoritesTitle),
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                    ),
                    onPressed: () {
                      interactor.clearData();
                      ref.invalidate(favoriteJokesProvider);
                    },
                  )
                ],
              ),
              body: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, position) {
                  return FavoriteItemWidget(
                    jokeText: snapshot.data![position].text,
                  );
                },
              ));
        }

        return const LinearProgressIndicator();
      },
    );
  }
}
