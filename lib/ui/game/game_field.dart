import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/bloc.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/frame/state.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/event.dart';
import 'package:flutter_counter_shooter/logic/blocs/scene/scene.dart';
import 'package:flutter_counter_shooter/ui/game/game_elements.dart';
import 'package:flutter_counter_shooter/ui/game/records/records_view.dart';

class GameField extends StatelessWidget {
  const GameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameBloc, FrameState>(
      bloc: di.get<FrameBloc>(),
      builder: (BuildContext context, FrameState frameState) {
        di.get<SceneBloc>().add(SceneEvent.update(frameState.delta));
        di.get<FrameBloc>().add(const FrameEvent.update());

        return Stack(
          children: <Widget>[
            if (kDebugMode)
              Positioned(
                left: 0,
                top: 0,
                child: Text(frameState.delta.toString()),
              ),
            GameElements(
              delta: frameState.delta,
            ),
            const RecordsView(),
          ],
        );
      },
    );
  }
}
