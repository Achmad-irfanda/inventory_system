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
    final isPotrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final isMobile = mediaQuerySize.shortestSide < 600;
    final isTablet = mediaQuerySize.shortestSide > 600;
    final GlobalKey<FormState> keyFormRegister = GlobalKey<FormState>();
    return AppsScaffold(
        withfloating: false,
        withLeading: true,
        withAction: false,
        withappbar: true,
        titleAppbar: "Register Users",
        mainChildWidget: Form(
          key: keyFormRegister,
          child: Stack(
            children: [
              if (isMobile)
                Positioned(
                    left: isPotrait ? 24 : mediaQuerySize.width / 4.5,
                    right: isPotrait ? 24 : mediaQuerySize.width / 4.5,
                    top: isPotrait ? mediaQuerySize.height / 7 : 24,
                    bottom: isPotrait ? mediaQuerySize.height / 7 : 24,
                    child: Container(
                      height: mediaQuerySize.height,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          color: Theme.of(context)
                              .scaffoldBackgroundColor
                              .withOpacity(0.90),
                          borderRadius: BorderRadius.circular(20)),
                      child: SingleChildScrollView(
                        padding:
                            EdgeInsets.only(bottom: mediaQuerySize.height / 2),
                        child: Column(
                          children: [
                            appsUpdateImageProfileWidget(
                                context, setState, PagePosition.register),
                            AppsPublicVariableResource.jarakheight24,
                            appsFormRegisterWidget(context, setState),
                            AppsPublicVariableResource.jarakheight24,
                            tailTermandPrivacyPolicies(context),
                          ],
                        ),
                      ),
                    )),
              if (isTablet)
                Positioned(
                    top: isPotrait
                        ? mediaQuerySize.height / 8.9
                        : mediaQuerySize.height / 4.5,
                    bottom: isPotrait
                        ? mediaQuerySize.height / 8.9
                        : mediaQuerySize.height / 4.5,
                    left: isPotrait
                        ? mediaQuerySize.width / 6
                        : mediaQuerySize.width / 4.5,
                    right: isPotrait
                        ? mediaQuerySize.width / 6
                        : mediaQuerySize.width / 4.5,
                    child: Container(
                      height: mediaQuerySize.height,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          color: Theme.of(context)
                              .scaffoldBackgroundColor
                              .withOpacity(0.90),
                          borderRadius: BorderRadius.circular(20)),
                      child: SingleChildScrollView(
                        padding:
                            EdgeInsets.only(bottom: mediaQuerySize.height / 2),
                        child: Column(
                          children: [
                            appsUpdateImageProfileWidget(
                                context, setState, PagePosition.register),
                            AppsPublicVariableResource.jarakheight24,
                            appsFormRegisterWidget(context, setState),
                            AppsPublicVariableResource.jarakheight24,
                            tailTermandPrivacyPolicies(context),
                          ],
                        ),
                      ),
                    ))
            ],
          ),
        ));
  }
}
