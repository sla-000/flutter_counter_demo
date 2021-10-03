import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/game/scene_data.dart';
import 'package:flutter_counter_shooter/ui/game_view.dart';

void main() {
  initDi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final Size screenSize = MediaQuery.of(context).size;

    late final SceneData sceneData;

    if (I.isRegistered<SceneData>()) {
      sceneData = I.get<SceneData>().copyWith(
            height: screenSize.height,
            width: screenSize.width,
          );

      I.unregister<SceneData>();
    } else {
      sceneData = SceneData.init(
        height: screenSize.height,
        width: screenSize.width,
      );
    }

    addSceneDataToDi(sceneData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const GameView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => I.get<SceneData>().buttonPressed(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
