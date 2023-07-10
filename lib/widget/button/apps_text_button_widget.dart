// apps text button

import 'package:inventory_system/apps_common_libs.dart';

class AppsTextButton extends StatelessWidget {
  final String titleText;
  final Function() onPressTextButton;
  final TextStyle? styleTextButton;

  const AppsTextButton(
      {super.key,
      required this.titleText,
      required this.onPressTextButton,
      required this.styleTextButton});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerLeft),
        onPressed: onPressTextButton,
        child: Text(
          titleText,
          style: styleTextButton,
        ));
  }
}
