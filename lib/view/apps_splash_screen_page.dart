// apps splash screen

import 'package:inventory_system/apps_common_libs.dart';

class AppsSplasscreen extends StatelessWidget {
  const AppsSplasscreen({super.key});
  Future<Widget> futureCall() async {
    return Future.delayed(
        const Duration(seconds: 3), (() => const AppsLoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    final bodysmall = Theme.of(context).textTheme.bodySmall;
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    return EasySplashScreen(
      logo: Image.asset(AppsIconResource.appsIcon),
      logoWidth: 80,
      backgroundColor: scaffoldBackgroundColor,
      showLoader: false,
      loadingText: Text('RIS | Recharge Inventory System',
          style:
              bodysmall!.copyWith(fontSize: 12, fontWeight: FontWeight.w800)),
      futureNavigator: futureCall(),
    );
  }
}
