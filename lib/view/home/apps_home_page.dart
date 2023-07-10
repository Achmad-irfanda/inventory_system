// apps admin home page
import 'package:inventory_system/apps_common_libs.dart';

class AppsHomePage extends StatefulWidget {
  const AppsHomePage({super.key});

  @override
  State<AppsHomePage> createState() => _AppsHomePageState();
}

class _AppsHomePageState extends State<AppsHomePage> {
  @override
  Widget build(BuildContext context) {
    return AppsScaffold(
        titleAppbar: 'Home Page',
        navigatorfloating: () {
        },
        uriicon: Icons.downhill_skiing_sharp,
        withfloating: true,
        withLeading: true,
        withappbar: true,
        withAction: false,
        mainChildWidget: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ));
  }
}
