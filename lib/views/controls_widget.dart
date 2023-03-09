import 'package:flutter/material.dart';

class ControlsWidget extends StatelessWidget {
  final Function onDislikeButtonClick;
  final Function onLikeButtonClick;

  const ControlsWidget({
    super.key,
    required this.onDislikeButtonClick,
    required this.onLikeButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 64.0,
                ),
                backgroundColor: Colors.redAccent,
                alignment: Alignment.center,
              ),
              onPressed: () => {onDislikeButtonClick()},
              child: const Icon(
                Icons.thumb_down,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 64.0,
                ),
                backgroundColor: Colors.green,
                alignment: Alignment.center,
              ),
              onPressed: () => {onLikeButtonClick()},
              child: const Icon(
                Icons.thumb_up,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
