import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/bombs/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/bullets/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/protagonist/bloc.dart';
import 'package:flutter_counter_shooter/ui/game/bombs/bombs_view.dart';
import 'package:flutter_counter_shooter/ui/game/bullets/bullets_view.dart';
import 'package:flutter_counter_shooter/ui/game/protagonist/protagonist.dart';

class GameElements extends StatelessWidget {
  const GameElements({
    Key? key,
    required this.delta,
  }) : super(key: key);

  final double delta;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProtagonistView(
          protagonist: di<ProtagonistBloc>().state.protagonist,
        ),
        BombsView(
          bombs: di<BombsBloc>().state.bombs,
        ),
        BulletsView(
          bullets: di<BulletsBloc>().state.bullets,
        ),
      ],
    );
  }
}
