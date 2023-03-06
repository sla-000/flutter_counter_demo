import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(),
          ),
          const SizedBox(height: 32),
          Text(
            context.l10n.loading,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
