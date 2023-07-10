import 'package:inventory_system/apps_common_libs.dart';

void main() async {
  // FIXME pada bgain device priview ini harus di hapus keitka mau release applikasinya

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp()

      // DevicePreview(
      // enabled: true,
      // tools: const [
      //   ...DevicePreview.defaultTools,
      // ],
      // builder: (context) => const MyApp())
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
      AppsPublicVariableResource.tipeUser = userProv.tipeUser;
      AppsPublicVariableResource.tipeMesinKasir = userProv.tipeMesinKasir;
      AppsPublicVariableResource.username = userProv.username;
      AppsPublicVariableResource.password = userProv.password;
      AppsPublicVariableResource.token = userProv.token;
      AppsPublicVariableResource.companyName = userProv.companyName;
      AppsPublicVariableResource.companyAddress = userProv.companyAddress;
      AppsPublicVariableResource.companyPhone = userProv.companyPhone;
    });
    if (userProv.isLogin) {
      return const AppsSplasscreen();
    } else {
      return const AppsLoginPage();
    }
  }
}
