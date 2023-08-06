// ignore_for_file: deprecated_member_use

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:inventory_system/api/notification_api.dart';
import 'package:inventory_system/apps_common_libs.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await NotificationApi().initNotification();
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    if (message.notification != null) {
      print('Notification Title: ${message.notification?.title}');
      print('Notification Body: ${message.notification?.body}');
    }
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppsThemeNotifier>(
            create: (_) => AppsThemeNotifier()),
        ChangeNotifierProvider<AppsAuthNotifier>(
            create: (_) => AppsAuthNotifier())
      ],
      child: Consumer<AppsThemeNotifier>(
        builder: (context, AppsThemeNotifier provider, child) {
          return GestureDetector(
            onTap: () {
              FocusScopeNode currentfocus = FocusScope.of(context);
              if (!currentfocus.hasPrimaryFocus) {
                currentfocus.unfocus();
              }
            },
            child: MaterialApp(
              useInheritedMediaQuery: true,
              theme: provider.darkmode
                  ? AppsStylesResource.themeData(true, context)
                  : AppsStylesResource.themeData(false, context),
              debugShowCheckedModeBanner: false,
              home: const AppsSplasscreen(),
              routes: {
                AppsHomePage.route: (context) => const AppsHomePage(),
              },
            ),
          );
        },
      ),
    );
  }
}

class AppsWrapper extends StatefulWidget {
  const AppsWrapper({super.key});

  @override
  State<AppsWrapper> createState() => _AppsWrapperState();
}

class _AppsWrapperState extends State<AppsWrapper> {
  @override
  Widget build(BuildContext context) {
    var userProv = Provider.of<AppsAuthNotifier>(context).appsauthdataprovider;
    setState(() {
      AppsPublicVariableResource.idUser = userProv.idUser;
      AppsPublicVariableResource.email = userProv.email;
      AppsPublicVariableResource.password = userProv.password;
    });
    if (userProv.isLogin) {
      return const AppsSplasscreen();
    } else {
      return const AppsLoginPage();
    }
  }
}
