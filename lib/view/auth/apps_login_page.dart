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
    final isPotrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final isMobile = mediaQuerySize.shortestSide < 600;
    final isTablet = mediaQuerySize.shortestSide > 600;
    return AppsScaffold(
        withfloating: false,
        withappbar: false,
        withLeading: false,
        withAction: false,
        mainChildWidget: Form(
          key: AppsPublicVariableResource.keyLogin,
          child: Stack(
            children: [
              if (isMobile)
                Positioned(
                  right: !isPotrait ? mediaQuerySize.width / 4 : 0,
                  left: !isPotrait ? mediaQuerySize.width / 4 : 0,
                  top: !isPotrait ? 10 : 0,
                  bottom: !isPotrait ? 58 : 0,
                  child: Container(
                    height: !isPotrait ? mediaQuerySize.height : null,
                    padding: !isPotrait ? const EdgeInsets.all(8) : null,
                    decoration: !isPotrait
                        ? BoxDecoration(
                            color: Theme.of(context)
                                .scaffoldBackgroundColor
                                .withOpacity(0.90),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Theme.of(context).primaryColor))
                        : null,
                    child: !isPotrait
                        ? SingleChildScrollView(
                            padding: const EdgeInsets.only(bottom: 100),
                            child: Column(
                              children: [
                                ClipShadowPathWidget(
                                    shadow: const Shadow(blurRadius: 16),
                                    clipper: AppsCurveCliperWidget(),
                                    childProperty: Image.asset(
                                        AppsImageResource.login,
                                        fit: BoxFit.fitHeight,
                                        height: mediaQuerySize.width / 2.6)),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child:
                                        appsFormLoginWidget(context, setState)),
                                AppsPublicVariableResource.jarakheight32,
                              ],
                            ))
                        : Column(
                            children: [
                              ClipShadowPathWidget(
                                  shadow: const Shadow(blurRadius: 16),
                                  clipper: AppsCurveCliperWidget(),
                                  childProperty: Image.asset(
                                      AppsImageResource.login,
                                      fit: BoxFit.fitHeight,
                                      height: mediaQuerySize.height / 2.6)),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  height: mediaQuerySize.height / 1.8,
                                  margin: const EdgeInsets.only(
                                      left: 32, right: 32, top: 24),
                                  child: SingleChildScrollView(
                                      padding:
                                          const EdgeInsets.only(bottom: 100),
                                      child: Column(
                                        children: [
                                          appsFormLoginWidget(
                                              context, setState),
                                          AppsPublicVariableResource
                                              .jarakheight32,
                                        ],
                                      ))),
                            ],
                          ),
                  ),
                ),
              //
              if (isTablet)
                Positioned(
                    top: isPotrait
                        ? mediaQuerySize.height / 6
                        : mediaQuerySize.height / 4.5,
                    bottom: isPotrait
                        ? mediaQuerySize.height / 6
                        : mediaQuerySize.height / 4.5,
                    left: isPotrait
                        ? mediaQuerySize.width / 6
                        : mediaQuerySize.width / 4.5,
                    right: isPotrait
                        ? mediaQuerySize.width / 6
                        : mediaQuerySize.width / 4.5,
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 2),
                        height: mediaQuerySize.height,
                        decoration: BoxDecoration(
                            color: Theme.of(context)
                                .scaffoldBackgroundColor
                                .withOpacity(0.95),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Theme.of(context).primaryColor)),
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ClipShadowPathWidget(
                                    shadow: const Shadow(blurRadius: 16),
                                    clipper: AppsCurveCliperWidget(),
                                    childProperty: Image.asset(
                                        AppsImageResource.login,
                                        fit: BoxFit.fitHeight,
                                        height: mediaQuerySize.width / 2.8)),
                                AppsPublicVariableResource.jarakheight16,
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 45),
                                    child:
                                        appsFormLoginWidget(context, setState)),
                              ],
                            ),
                          ),
                        ))),

              if (!isMobile && !isTablet)
                Center(
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          AppsIconResource.appsIcon,
                          width: 40,
                          height: 40,
                        ),
                      ),
                      Text(
                        "This app not supported size more than tablet or mobile phone",
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
            ],
          ),
        ));
  }
}
