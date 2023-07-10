// apps tail widget

import 'package:inventory_system/apps_common_libs.dart';

Widget appsTailLoginWidget(
  context,
) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
    child: Column(
      children: [
        Image.asset(
          AppsIconResource.appsIcon,
          width: 30,
          height: 30,
        ),
        Text(
          'SiePOS | Empowering Your Business Transactions',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontWeight: FontWeight.w700),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
