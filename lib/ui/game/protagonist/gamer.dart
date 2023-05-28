import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/score/state.dart';
import 'package:flutter_counter_shooter/ui/game/protagonist/animate_size.dart';
import 'package:flutter_counter_shooter/ui/game/protagonist/gamer_icon.dart';

class Gamer extends StatefulWidget {
  const Gamer({
    super.key,
    required this.size,
  });

  final double size;

  @override
  State<Gamer> createState() => _GamerState();
}

class _GamerState extends State<Gamer> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) => BlocBuilder<ScoreBloc, ScoreState>(
        bloc: di.get<ScoreBloc>(),
        buildWhen: (ScoreState previous, ScoreState current) =>
            current.gameState != previous.gameState,
        builder: (_, ScoreState state) => AnimateSize(
          duration: const Duration(milliseconds: 1000),
          size: widget.size,
          show: state.isStarted,
          child: GamerIcon(size: widget.size),
        ),
      );
}
