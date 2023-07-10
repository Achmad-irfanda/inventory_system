// apps show modal bottom sheet

import 'package:inventory_system/apps_common_libs.dart';

void appsShowModalBottomSheet(
  BuildContext context,
  listButton,
) {
  final cardColor = Theme.of(context).cardColor;
  showModalBottomSheet(
      elevation: 10,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (ctx) => Container(
            decoration: BoxDecoration(
                color: cardColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: MediaQuery.of(context).size.height / 5,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: listButton,
            ),
          ));
}
