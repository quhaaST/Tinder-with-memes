import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/joke.dart';

const String jokeRequestPath = 'https://api.chucknorris.io/jokes/random';

Future<Joke> fetchJoke() async {
  try {
    final response = await http.get(Uri.parse(jokeRequestPath));

    if (response.statusCode == 200) {
      return Joke.fromJson(jsonDecode(response.body));
    } else {
      return const Joke(
        value: "Invalid response, my friend...",
      );
    }
  } catch (e) {
    // in case of HTTP exception get the base joke
    return const Joke(
      value: 'Imagine the internet gonna break...',
    );
  }
}
