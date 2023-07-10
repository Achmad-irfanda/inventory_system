// apps divider

import 'package:inventory_system/apps_common_libs.dart';

Widget basicDivider(BuildContext context) {
  return const Divider(color: Colors.grey);
}

Widget customDivider(BuildContext context, colorCustom) {
  return Divider(color: colorCustom);
}
