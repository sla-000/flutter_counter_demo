import 'package:flutter/material.dart';
import 'package:flutter_counter_shooter/utils/context_extensions.dart';

class YouPushedTheButtonText extends StatelessWidget {
  const YouPushedTheButtonText({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Text(
        context.l10n.youHavePushed,
        style: Theme.of(context).textTheme.bodyMedium,
      );
}
