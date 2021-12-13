import 'package:clean_app/theme/text_styles.dart';
import 'package:flutter/material.dart';

class LanguageSelectedWidgeet extends StatelessWidget {
  final String language;
  const LanguageSelectedWidgeet({
    required this.language,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(
          context,
          language,
        );
      },
      child: Text(
        language,
        style: TextStyles.overlay3Bold14,
      ),
    );
  }
}
