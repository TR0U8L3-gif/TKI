import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/l10n/l10n.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/extensions/context_extension.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/src/language/presentation/widgets/language_list_tile.dart';

@RoutePage()
class LanguagesPage extends StatelessWidget {
  const LanguagesPage({super.key});

  static const String routeName = '/languages';
  static const double _widthFactor = 0.8;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(context.l10n.language),
      ),
      body: Align(
        child: SizedBox(
          width: context.width * _widthFactor,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: L10n.allLanguages.length,
            itemBuilder: (context, index) => LanguageListTile(
              language: context.l10n.languageName(L10n.allLanguages[index].languageCode), 
              languageCode: L10n.allLanguages[index].languageCode,
              onTap: () =>
                  context.changeLanguage(L10n.allLanguages[index].languageCode),
            ),
          ),
        ),
      ),
    );
  }
}
