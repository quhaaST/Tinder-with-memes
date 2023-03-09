import 'package:flutter/material.dart';

import '../models/joke.dart';

class JokeWidget extends StatelessWidget {
  final Future<Joke> futureJoke;

  const JokeWidget({
    super.key,
    required this.futureJoke,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Joke>(
      future: futureJoke,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SafeArea(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.symmetric(
                vertical: 40.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.black38,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image(
                      height: 275,
                      width: 275,
                      image: AssetImage(
                        getImageAssetName(snapshot.data!.value),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                    ),
                    child: Text(
                      snapshot.data!.value,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: getJokeTextSize(snapshot.data!.value),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return const LinearProgressIndicator();
      },
    );
  }
}

double getJokeTextSize(String jokeText) {
  if (jokeText.length < 200) {
    return 20.0;
  } else {
    return 16.0;
  }
}

String getImageAssetName(String jokeText) {
  final number = jokeText.length % 3;
  String assetName = '';

  switch (number) {
    case 0:
      assetName = 'assets/base_chuck.png';
      break;
    case 1:
      assetName = 'assets/cool_chuck.png';
      break;
    default:
      assetName = 'assets/smile_chuck.png';
  }

  return assetName;
}
