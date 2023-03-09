import 'package:first_app/network/requests.dart';
import 'package:first_app/views/controls_widget.dart';
import 'package:first_app/views/joke_widget.dart';
import 'package:first_app/views/profile_page.dart';
import 'package:flutter/material.dart';

import '../models/joke.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late Future<Joke> futureJoke;

  @override
  void initState() {
    super.initState();
    futureJoke = fetchJoke();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tinder&Chuck',
        ),
        actions: [
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
                futureJoke: futureJoke,
              ),
            ),
            Expanded(
              flex: 0,
              child: ControlsWidget(
                onDislikeButtonClick: () => {
                  setState(() {
                    futureJoke = fetchJoke();
                  })
                },
                onLikeButtonClick: () => {
                  setState(() {
                    futureJoke = fetchJoke();
                  })
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
