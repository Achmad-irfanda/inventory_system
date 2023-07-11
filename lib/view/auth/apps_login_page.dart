// apps login page

import 'package:inventory_system/apps_common_libs.dart';

class AppsLoginPage extends StatefulWidget {
  const AppsLoginPage({super.key});

  @override
  State<AppsLoginPage> createState() => _AppsLoginPageState();
}

class _AppsLoginPageState extends State<AppsLoginPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    final isPotrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      body:  Form(
        key: AppsPublicVariableResource.formkey,
        child: Container(
          margin: EdgeInsets.only(
            right: !isPotrait ? mediaQuerySize.width / 4 : 0,
            left: !isPotrait ? mediaQuerySize.width / 4 : 0,
            top: !isPotrait ? 10 : 0,
            bottom: !isPotrait ? 28 : 0,
          ),
          height: !isPotrait ? mediaQuerySize.height : null,
          padding: !isPotrait ? const EdgeInsets.all(8) : null,
          decoration: !isPotrait
              ? BoxDecoration(
                  color: Theme.of(context)
                      .scaffoldBackgroundColor
                      .withOpacity(0.90),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Theme.of(context).primaryColor))
              : null,
          child: !isPotrait
              ? SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Column(
                    children: [
                      ClipShadowPathWidget(
                          shadow: const Shadow(blurRadius: 16),
                          clipper: AppsCurveCliperWidget(),
                          childProperty: Image.asset(AppsImageResource.login,
                              fit: BoxFit.fitHeight,
                              height: mediaQuerySize.width / 2.6)),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: AppsFormLogin()),
                      AppsPublicVariableResource.jarakheight24,
                      tailTermandPrivacyPolicies(context),
                    ],
                  ))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipShadowPathWidget(
                        shadow: const Shadow(blurRadius: 16),
                        clipper: AppsCurveCliperWidget(),
                        childProperty: Image.asset(AppsImageResource.login,
                            fit: BoxFit.fitHeight,
                            height: mediaQuerySize.height / 2.6)),
                    Flexible(
                      flex: 1,
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          height: mediaQuerySize.height,
                          margin: const EdgeInsets.only(
                              left: 32, right: 32, top: 24),
                          child: SingleChildScrollView(
                              padding: const EdgeInsets.only(bottom: 100),
                              child: Column(
                                children: [
                                  const AppsFormLogin(),
                                  AppsPublicVariableResource.jarakheight24,
                                  tailTermandPrivacyPolicies(context),
                                ],
                              ))),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
