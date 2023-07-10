// apps floating action button

import 'package:inventory_system/apps_common_libs.dart';

Widget appsfloatingbuttonwidget(
  context,
  navigatorfloating,
  uriicon,
  withfloating,
) {
  return (withfloating == true)
      ? FloatingActionButton(
          onPressed: navigatorfloating,
          backgroundColor: Theme.of(context).primaryColor,
          child: AppsIconWidget(
            iconType: IconType.materialIcon,
            colorIcon: Theme.of(context).scaffoldBackgroundColor,
            uriIcon: uriicon,
          ),
        )
      : Container();
}
