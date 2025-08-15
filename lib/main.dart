import 'package:game_star/my_game.dart';
import 'package:game_star/overlays/game_over_overlay.dart';
import 'package:game_star/overlays/title_overlay.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final MyGame game = MyGame();

  runApp(GameWidget(
    game: game,
    overlayBuilderMap: {
      'GameOver': (context, MyGame game) => GameOverOverlay(game: game),
      'Title': (context, MyGame game) => TitleOverlay(game: game),
    },
    initialActiveOverlays: const ['Title'],
  ));
}
