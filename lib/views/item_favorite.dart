import 'package:flutter/material.dart';

import '../utils/joke_utils.dart';

class FavoriteItemWidget extends StatelessWidget {
  final String jokeText;

  const FavoriteItemWidget({super.key, required this.jokeText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.greenAccent,
      ),
      margin: const EdgeInsets.fromLTRB(16.0, 20.0, 16.0, 0.0),
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 8.0,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image(
              height: 50,
              width: 50,
              image: AssetImage(
                getImageAssetName(jokeText),
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 16.0,
              ),
              child: Text(
                jokeText,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
