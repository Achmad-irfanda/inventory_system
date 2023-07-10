// apps admin home page
import 'package:inventory_system/apps_common_libs.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
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
