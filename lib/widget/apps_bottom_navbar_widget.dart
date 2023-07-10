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
      const AppsItemInsidePage(),
      const AppsItemOutsidePage(), 
      const AppsReportPage(),
      const AppProfileUserPage()
    ];

    return Scaffold(
      body: page.elementAt(indexs),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height / 10,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Theme.of(context).primaryColor, 
              selectedFontSize: 12,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
              currentIndex: indexs,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey.shade400,
              iconSize: 24.0,
              onTap: onItemTap,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: (indexs == 0)
                        ? const Icon(Icons.home)
                        : const Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: (indexs == 1)
                      ? const Icon(Icons.zoom_in_map_rounded)
                      : const Icon(Icons.zoom_in_map_rounded),
                  label: 'Inside',
                ),
                BottomNavigationBarItem(
                  icon: (indexs == 2)
                      ? const Icon(Icons.zoom_out_map_rounded)
                      : const Icon(Icons.zoom_out_map_rounded),
                  label: 'Outside',
                ),
                BottomNavigationBarItem(
                  icon: (indexs == 3)
                      ? const Icon(Icons.document_scanner)
                      : const Icon(Icons.document_scanner_outlined),
                  label: 'Report',
                ),
                BottomNavigationBarItem(
                  icon: (indexs == 4)
                      ? const Icon(Icons.person_2)
                      : const Icon(Icons.person_2_outlined),
                  label: 'Profile',
                ),
              ]),
        ),
      ),
    );
  }
}
