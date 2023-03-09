# Tinder with Chuck

## Description
Simply speaking, this is the Tinder app with memes about Chuck Norris.
All the memes are provided with the coolest man in different styles.
It is possible to like or dislike the last seen meme, to see the next one.
The app gives the possibility to enter the Profile zone and see the credentials of the author.

### API
All the texts of the jokes are received from `https://api.chucknorris.io/jokes/random`.
For each of the requests to show the joke, one at a time is requested.

The base of the requests section was done with the help of `http` package in `Dart`.

### Structure
The project structure is divided into several directories:
- assets - contains the images for the project
- lib/models - contains base models for `Joke` class
- lib/network - keeps the logic for HTTP requests
- lib/views - contains the base views/widgets used in the app

### Project includes
1. http is used for networking calls
2. All of MaterialApp, Scaffold, SafeArea, Column (or Row), Padding are used for Widgets
3. `ControlsWidget`, `JokeWidget`, `ProfilePage` as StatelessWidgets
4. `RootPage` as a StatefulWidget
5. `json_serializable for composing` `Joke` models from JSON

### Screenshots
- Root app view ![](https://i.imgur.com/Q4ScBFC.png)
- Profile screen ![](https://i.imgur.com/f2rPNr9.png)