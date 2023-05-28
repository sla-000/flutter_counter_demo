import 'package:flutter/material.dart';

class SplashWhileWaitFuture extends StatelessWidget {
  const SplashWhileWaitFuture({
    super.key,
    required this.splashFuture,
    required this.splashScreen,
    required this.child,
  });

  final Future<void> splashFuture;
  final Widget splashScreen;
  final Widget child;

  @override
  Widget build(BuildContext context) => FutureBuilder<void>(
        future: splashFuture,
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return child;
          }

          return splashScreen;
        },
      );
}
