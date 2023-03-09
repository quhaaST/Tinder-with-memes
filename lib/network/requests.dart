import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/joke.dart';

const String jokeRequestPath = 'https://api.chucknorris.io/jokes/random';

Future<Joke> fetchJoke() async {
  final response = await http.get(Uri.parse(jokeRequestPath));

  if (response.statusCode == 200) {
    return Joke.fromJson(jsonDecode(response.body));
  } else {
    // in case of HTTP exception get the base joke
    return const Joke(
      value: 'Imagine the internet gonna break...',
    );
  }
}
