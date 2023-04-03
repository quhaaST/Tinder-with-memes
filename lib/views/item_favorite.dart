import 'package:flutter/material.dart';

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
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: const Image(
              height: 50,
              width: 50,
              image: NetworkImage("https://vsegda-pomnim.com/uploads/posts/2022-04/1649126083_20-vsegda-pomnim-com-p-samie-krasivie-peizazhi-prirodi-foto-23.jpg"),
            ),
          ),
          Text(jokeText),
        ],
      ),
    );
  }
}
