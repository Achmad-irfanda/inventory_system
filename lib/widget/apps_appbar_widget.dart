// apps appbar

import 'package:inventory_system/apps_common_libs.dart';

class AppsAppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  final dynamic titleAppbar;
  final bool? withLeading;
  final bool? customNav;
  final dynamic onPressedCustomNav;
  final dynamic withAction;
  final dynamic listAction;

  const AppsAppbarWidget({
    super.key,
    this.titleAppbar,
    this.withLeading = false,
    this.customNav = false,
    this.onPressedCustomNav,
    this.withAction,
    this.listAction,
  });

  @override
  State<AppsAppbarWidget> createState() => _AppsAppbarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(49);
}

class _AppsAppbarWidgetState extends State<AppsAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: (widget.withLeading == false)
          ? null
          : AppsIconWidget(
              iconType: IconType.materialIconButton,
              colorIcon: Colors.brown.shade50,
              uriIcon: Icons.arrow_back_rounded,
              onPressIconButton: () {
                widget.customNav == true
                    ? widget.onPressedCustomNav
                    : Navigator.of(context).pop();
              },
            ),
      title: Text(
        widget.titleAppbar,
        style: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      actions: (widget.withAction == false) ? null : widget.listAction,
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    );
  }
}
