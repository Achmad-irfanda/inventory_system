// apps sie pos scaffold (public)

import 'apps_common_libs.dart';

class AppsScaffold extends StatelessWidget {
  // with floating
  final dynamic withfloating;
  final dynamic navigatorfloating;
  final dynamic uriicon;
  // with appbar
  final dynamic withappbar;
  final dynamic titleAppbar;
  final bool? withLeading;
  final bool? customNav;
  final dynamic onPressCustomNav;
  final dynamic withAction;
  final dynamic listAction;
  // main widget
  final Widget mainChildWidget;

  const AppsScaffold({
    super.key,
    this.withfloating,
    this.navigatorfloating,
    this.uriicon,
    this.withappbar,
    this.titleAppbar,
    this.withLeading,
    this.customNav,
    this.onPressCustomNav,
    this.withAction,
    this.listAction,
    required this.mainChildWidget,
  });

  @override
  Widget build(BuildContext context) => OrientationBuilder(builder: (context, orientation) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        floatingActionButton: appsfloatingbuttonwidget(
            context, navigatorfloating, uriicon, withfloating),
        appBar: (withappbar == false)
            ? null
            : AppsAppbarWidget(
                titleAppbar: titleAppbar,
                withLeading: withLeading,
                customNav: customNav,
                onPressedCustomNav: onPressCustomNav,
                withAction: withAction,
                listAction: listAction,
              ),
        body: mainChildWidget,
      ),
    );
  }
  );
}
