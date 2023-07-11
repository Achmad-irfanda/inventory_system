// apps register page

import 'package:inventory_system/apps_common_libs.dart';

class AppsRegisterPage extends StatefulWidget {
  const AppsRegisterPage({super.key});

  @override
  State<AppsRegisterPage> createState() => _AppsRegisterPageState();
}

class _AppsRegisterPageState extends State<AppsRegisterPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    final isPotrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: const AppsAppbarWidget(
        titleAppbar: "Register User",
        withLeading: true,
      ),
      body: Form(
        key: AppsPublicVariableResource.formkeys,
        child: Container(
          margin: EdgeInsets.only(
            left: isPotrait ? 24 : mediaQuerySize.width / 4.5,
            right: isPotrait ? 24 : mediaQuerySize.width / 4.5,
            top: isPotrait ? mediaQuerySize.height / 7 : 24,
            bottom: isPotrait ? mediaQuerySize.height / 7 : 24,
          ),
          height: mediaQuerySize.height,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor,
              ),
              color:
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.90),
              borderRadius: BorderRadius.circular(20)),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: mediaQuerySize.height / 2),
            child: Column(
              children: [
                const AppsRegisterForm(),
                AppsPublicVariableResource.jarakheight24,
                tailTermandPrivacyPolicies(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
