import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/config/l10n/l10n.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/core/extensions/num_extension.dart';
import 'package:tki_app/src/language/presentation/widgets/language_list_tile.dart';

@RoutePage()
class LanguagesPage extends StatelessWidget {
  const LanguagesPage({super.key});

  static const String routeName = '/languages';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: Text(context.l10n.language),
      ),
      body: Align(
        child: Container(
          width: AppSize.deviceSmall * AppSize.xxxl72.fraction,
          padding: const EdgeInsets.symmetric(vertical: AppSize.s4),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: L10n.allLanguages.length,
            padding: const EdgeInsets.symmetric(horizontal: AppSize.l),
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
