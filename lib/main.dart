
import 'package:inventory_system/apps_common_libs.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp(const MyApp()
  );
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
                home: const AppsSplasscreen()),
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
