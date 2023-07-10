// apps term and priv

import 'package:flutter/rendering.dart';
import 'package:inventory_system/apps_common_libs.dart';

class AppsTermandPrivPage extends StatefulWidget {
  const AppsTermandPrivPage({super.key});

  @override
  State<AppsTermandPrivPage> createState() => _AppsTermandPrivPageState();
}

class _AppsTermandPrivPageState extends State<AppsTermandPrivPage> {
  Widget customTitle(String value) {
    return Text(value, style: Theme.of(context).textTheme.bodyLarge);
  }

  @override
  Widget build(BuildContext context) {
    return AppsScaffold(
        titleAppbar: "Term and Privacy Policies",
        withappbar: true,
        withLeading: true,
        withfloating: false,
        withAction: false,
        mainChildWidget: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTitle('Term of Service'), 
              
              customTitle('Privacy Policies'), 
            ],
          ),
        ));
  }
}
