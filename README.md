# Tinder with Chuck

## Description
Simply speaking, this is the Tinder app with memes about Chuck Norris.
All the memes are provided with the coolest man in different styles.
It is possible to like or dislike the last seen meme, to see the next one.
The app gives the possibility to enter the Profile zone and see the credentials of the author.

### What's new
- liked jokes are now saved in favorites! You can check them by going to the favorites page
- favorite jokes data is persistent, is implemented with Hive
- network missing situations are handled
- added localization for the screens
- state management is moved to Riverpod
- added a custom icon

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
- lib/l10n - localization files
- lib/utils - contains shared util logic
- lib/providers - keeps providers for Riverpod
- lib/interactors - keeps interactor logic as a layer between datasource and ui
- lib/storage - contains logic for datasources (e.g. Hive)

### Screenshots
- Root app view ![](https://i.imgur.com/ly0CCG8.jpg)
- Favorites view ![](https://i.imgur.com/Mx0G3aH.jpeg)
- Favorites (localized) ![](https://i.imgur.com/BdCmd9l.jpg)
- Profile view ![](https://i.imgur.com/xbjI0Nm.jpg)

### Download
You can download the app [here](https://drive.google.com/file/d/1MMdSIn0AeCCNelQVoTuKOOs4Fv7uv-PW/view?usp=share_link).