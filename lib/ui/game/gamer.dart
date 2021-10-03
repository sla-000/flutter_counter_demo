import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/game_started_bloc.dart';

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
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Center(
        child: StreamBuilder<bool>(
          stream: I.get<GameStartedBloc>().stream,
          builder: (_, AsyncSnapshot<bool> snapshot) {
            if (snapshot.data ?? false) {
              return AnimatedSize(
                duration: const Duration(milliseconds: 1000),
                vsync: this,
                child: Icon(
                  Icons.android_outlined,
                  size: widget.size,
                ),
              );
            }

            return AnimatedSize(
              duration: const Duration(milliseconds: 1000),
              vsync: this,
              child: const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
