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
