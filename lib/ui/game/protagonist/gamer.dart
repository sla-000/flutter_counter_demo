import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_score/state.dart';
import 'package:flutter_counter_shooter/ui/game/protagonist/animate_size.dart';
import 'package:flutter_counter_shooter/ui/game/protagonist/gamer_icon.dart';

class Gamer extends StatefulWidget {
  const Gamer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  _GamerState createState() => _GamerState();
}

class _GamerState extends State<Gamer> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameScoreBloc, GameScoreState>(
      bloc: di.get<GameScoreBloc>(),
      buildWhen: (GameScoreState previous, GameScoreState current) => current.gameStarted != previous.gameStarted,
      builder: (_, GameScoreState state) {
        return AnimateSize(
          duration: const Duration(milliseconds: 1000),
          size: widget.size,
          show: state.gameStarted,
          child: GamerIcon(size: widget.size),
        );
      },
    );
  }
}
