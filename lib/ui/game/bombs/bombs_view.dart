import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/game/enemy/bomb.dart';
import 'package:flutter_counter_shooter/ui/game/bombs/bomb_view.dart';

class BombsView extends StatelessWidget {
  const BombsView({
    super.key,
    required this.bombs,
  });

  final Iterable<Bomb> bombs;

  @override
  Widget build(BuildContext context) => BlocBuilder<ScoreBloc, ScoreState>(
        bloc: di.get<ScoreBloc>(),
        buildWhen: (ScoreState previous, ScoreState current) =>
            current.gameState != previous.gameState,
        builder: (_, ScoreState state) {
          if (state.isStarted) {
            return Stack(
              children: <Widget>[
                ..._buildBombs(),
              ],
            );
          }

          return const SizedBox.shrink();
        },
      );

  List<Widget> _buildBombs() => bombs
      .map(
        (Bomb bomb) => BombView(
          bomb: bomb,
        ),
      )
      .toList(growable: false);
}
