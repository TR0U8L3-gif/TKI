import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';

@RoutePage()
class QuestionsSetPage extends StatelessWidget {
  const QuestionsSetPage({super.key});

  static const String routeName = '/questions-set';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(context.l10n.tkiQuestionsSet),
      ),
      body: Center(
        child: Text('Questions Set Page'),
      ),
    );
  }
}
