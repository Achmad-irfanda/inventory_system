// apps admin home page
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:inventory_system/apps_common_libs.dart';
import 'package:inventory_system/main.dart';

class AppsHomePage extends StatefulWidget {
  const AppsHomePage({super.key});
  static const route = 'apps_home_page';
  static RemoteMessage? argu;

  @override
  State<AppsHomePage> createState() => _AppsHomePageState();
}

class _AppsHomePageState extends State<AppsHomePage> {
  OverlayEntry? entry;
  Offset offset = Offset(20, 40);
  ScrollController _scrollController = ScrollController();

// _scrollController = new ScrollController();
  @override
  void initState() {
    changePosition();
    _scrollController = ScrollController();
    // _scrollController.addListener(_scrollListener);
    super.initState();
  }

  void changePosition() {
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = 200.0; // or something else..
      if (maxScroll - currentScroll <= delta) {
        shwowOverlay();
      } else {
        hideOverlay();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var message = ModalRoute.of(context)!.settings.arguments;
    return AppsScaffold(
        titleAppbar: 'Home Page',
        navigatorfloating: () {},
        uriicon: Icons.downhill_skiing_sharp,
        withfloating: true,
        withLeading: true,
        withappbar: true,
        withAction: false,
        mainChildWidget: Center(
            child: NotificationListener<ScrollNotification>(
          onNotification: (scroll) {
            if (scroll is ScrollStartNotification) {
              print("startscroll");
              hideOverlay();
            } else if (scroll is ScrollUpdateNotification) {
              print("scroll update");
              hideOverlay(); 
            } else if (scroll is ScrollEndNotification) {
              print("scroll ended");
              shwowOverlay();
            }
            return true;
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      shwowOverlay();
                    },
                    icon: const Icon(Icons.visibility),
                    label: const Text("Show floating widget")),
                ElevatedButton.icon(
                    onPressed: () {
                      hideOverlay();
                    },
                    icon: const Icon(Icons.visibility_off),
                    label: const Text("hide floating widget")),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
                Text("title:$message"),
                Text("message:$message"),
                Text("data:$message"),
              ],
            ),
          ),
        )));
  }

  void shwowOverlay() {
    entry = OverlayEntry(
        builder: (context) => Positioned(
              left: offset.dx,
              top: offset.dy,
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() => offset += details.delta);
                  entry!.markNeedsBuild();
                },
                child: ElevatedButton.icon(
                  icon: Icon(Icons.stop_circle_rounded),
                  label: Text('record'),
                  onPressed: () {},
                ),
              ),
            ));
    final overlay = Overlay.of(context);
    overlay.insert(entry!);
  }

  void hideOverlay() {
    entry?.remove();
    entry = null;
  }
}
