import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';

@RoutePage()
class AssessmentHistoryPage extends StatelessWidget {
const AssessmentHistoryPage({ super.key });

static const String tabName = 'list';

  @override
  Widget build(BuildContext context){
    return AppScaffold(
      appBar: AppBar(
        title: Text(context.l10n.assessmentHistory),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          padding: const EdgeInsets.all(AppSize.m),
          onPressed: () => context.router.maybePop(),
        ),
      ),
      body: const Center(
        child: Text('Assessment History Page'),
      ),
    );
  }
}