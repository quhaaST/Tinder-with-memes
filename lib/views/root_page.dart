import 'package:first_app/storage/hive_provider.dart';
import 'package:first_app/views/controls_widget.dart';
import 'package:first_app/views/favorites_page.dart';
import 'package:first_app/views/joke_widget.dart';
import 'package:first_app/views/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../interactors/favorites_interactor.dart';
import '../providers/jokes_provider.dart';

class RootPage extends HookConsumerWidget {
  final FavoritesInteractor interactor = FavoritesInteractor();

  RootPage({super.key}) {
    HiveProvider().getDatabaseInstance();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final joke = ref.watch(jokesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tinder&Chuck',
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return FavoritesPage();
                }),
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.person,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const ProfilePage();
                }),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: JokeWidget(
                futureJoke: joke,
              ),
            ),
            Expanded(
              flex: 0,
              child: ControlsWidget(
                onDislikeButtonClick: () => {
                  ref.refresh(jokesProvider),
                },
                onLikeButtonClick: () => {
                  ref.refresh(jokesProvider),
                  interactor.addJoke(joke),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
