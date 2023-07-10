// apps bottom navbar

import 'package:inventory_system/apps_common_libs.dart';

class AppsBottomNavbarWidget extends StatefulWidget {
  const AppsBottomNavbarWidget({Key? key}) : super(key: key);

  @override
  State<AppsBottomNavbarWidget> createState() => _AppsBottomNavbarWidgetState();
}

class _AppsBottomNavbarWidgetState extends State<AppsBottomNavbarWidget> {
  int indexs = 0;

  void onItemTap(int index) {
    setState(() {
      indexs = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> page = <Widget>[
      const AppsHomePage(),
      const AppsLeadPage(),
      const AppsCommisionPage(),
      const AppsProfilePage(),
    ];

    return Scaffold(
      body: page.elementAt(indexs),
      bottomNavigationBar: Container(
        color: white,
        height: MediaQuery.of(context).size.height / 10,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: darkPurple,
              selectedFontSize: 12,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
              currentIndex: indexs,
              selectedItemColor: white,
              unselectedItemColor: grey1,
              iconSize: 24.0,
              onTap: onItemTap,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage((indexs == 0)
                        ? AppsIconResource.homact
                        : AppsIconResource.hompas),
                    size: 24,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage((indexs == 1)
                        ? AppsIconResource.projact
                        : AppsIconResource.projpas),
                    size: 24,
                  ),
                  label: 'Lead',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage((indexs == 2)
                        ? AppsIconResource.payact
                        : AppsIconResource.paypas),
                    size: 24,
                  ),
                  label: 'Commision',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage((indexs == 3)
                        ? AppsIconResource.profact
                        : AppsIconResource.profpas),
                    size: 24,
                  ),
                  label: 'Home',
                ),
              ]),
        ),
      ),
    );
  }
}
