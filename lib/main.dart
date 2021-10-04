import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/di/di.dart';
import 'package:flutter_counter_shooter/logic/game/scene_data.dart';
import 'package:flutter_counter_shooter/ui/game_view.dart';

void main() {
  diInit();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter counter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter counter demo'),
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
  void dispose() {
    diDispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final Size screenSize = MediaQuery.of(context).size;

    late final SceneData sceneData;

    if (di.isRegistered<SceneData>()) {
      sceneData = di.get<SceneData>().copyWith(
            height: screenSize.height,
            width: screenSize.width,
          );

      di.unregister<SceneData>();
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
      appBar: SizedAppBar(
        title: widget.title,
        height: 50,
      ),
      body: const GameView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => di.get<SceneData>().buttonPressed(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SizedAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SizedAppBar({
    Key? key,
    required this.title,
    required this.height,
  }) : super(key: key);

  final String title;
  final double height;

  @override
  Size get preferredSize => Size(double.infinity, height);

  @override
  State<SizedAppBar> createState() => _SizedAppBarState();
}

class _SizedAppBarState extends State<SizedAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
    );
  }
}
