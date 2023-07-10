// apps common button

import 'package:inventory_system/apps_common_libs.dart';

class AppsElevatedButton extends StatelessWidget {
  final dynamic title;
  final Function() navigator;
  final dynamic colorText;
  final dynamic backgroundColor;

  const AppsElevatedButton({
    super.key,
    required this.title,
    required this.navigator,
    required this.colorText,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final styleText = Theme.of(context)
        .textTheme
        .titleLarge!
        .copyWith(color: colorText, fontSize: 19, fontWeight: FontWeight.w800);
    final normalButton = ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: BorderSide(color: primaryColor, width: 1),
        ),
        elevation: 0);

    return ElevatedButton(
        style: normalButton,
        onPressed: navigator,
        child: Text(title, style: styleText));
  }
}
