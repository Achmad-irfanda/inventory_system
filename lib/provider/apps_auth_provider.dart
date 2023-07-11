// apps user provider

import 'package:inventory_system/apps_common_libs.dart';

class AppsAuthDataProvider {
  int idUser;
  String email;
  String password;
  bool isLogin;

  AppsAuthDataProvider({
    required this.idUser,
    required this.email, 
    required this.password,
    this.isLogin = false,
  });
}

class AppsAuthNotifier extends ChangeNotifier {
  late AppsAuthDataProvider appsauthdataprovider;
  AppsAuthNotifier() {
    appsauthdataprovider = AppsAuthDataProvider(
      idUser: 0,
      email: "",
      password: "",
      isLogin: false,
    );
    loadUserData();
    notifyListeners();
  }

  AppsAuthDataProvider get appsUserDataProvider => appsauthdataprovider;

  //get data form login page
  void userLogin(AppsAuthDataProvider appsAuthDataProvider) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt("idUser", appsAuthDataProvider.idUser);
    sp.setString("email", appsAuthDataProvider.email);
    sp.setString("password", appsAuthDataProvider.password);
    sp.setBool("isLogin", true);

    appsauthdataprovider = appsAuthDataProvider;
    notifyListeners();
  }

// load data if user come back to apps (or apps closed)
  void loadUserData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    appsauthdataprovider = AppsAuthDataProvider(
      idUser: sp.getInt("idUser") ?? 0,
      email: sp.getString("email") ?? "",
      password: sp.getString("password") ?? "",
      isLogin: sp.getBool("isLogin") ?? true,
    );
    notifyListeners();
  }

  //logout
  void logOut() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt("idUser", 0);
    sp.setString("email", "");
    sp.setString("passowrd", "");
    sp.setBool("isLogin", false);
    appsauthdataprovider;
    notifyListeners();
  }
}
