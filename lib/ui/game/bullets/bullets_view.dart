import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/logic/game/bullet/bullet.dart';
import 'package:flutter_counter_shooter/ui/game/bullets/bullet_view.dart';

class BulletsView extends StatelessWidget {
  const BulletsView({
    Key? key,
    required this.bullets,
  }) : super(key: key);

  final Iterable<Bullet> bullets;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScoreBloc, ScoreState>(
      bloc: di.get<ScoreBloc>(),
      buildWhen: (ScoreState previous, ScoreState current) => current.gameState != previous.gameState,
      builder: (_, ScoreState state) {
        if (state.isStarted) {
          return Stack(
            children: <Widget>[
              ..._buildBullets(),
            ],
          );
        }

        return const SizedBox.shrink();
      },
    );
  }

  List<Widget> _buildBullets() {
    return bullets
        .map(
          (Bullet bullet) => BulletView(
            bullet: bullet,
          ),
        )
        .toList(growable: false);
  }
}
