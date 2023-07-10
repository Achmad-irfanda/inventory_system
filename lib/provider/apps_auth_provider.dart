// apps user provider

import 'package:inventory_system/apps_common_libs.dart';

class AppsAuthDataProvider {
  int idUser;
  String tipeUser;
  String tipeMesinKasir;
  String username;
  String password;
  String token;
  String companyName;
  String companyAddress;
  String companyPhone;
  bool isLogin;

  AppsAuthDataProvider({
    required this.idUser,
    required this.tipeUser,
    required this.tipeMesinKasir,
    required this.username,
    required this.password,
    required this.token,
    required this.companyName,
    required this.companyAddress,
    required this.companyPhone,
    this.isLogin = false,
  });
}

class AppsAuthNotifier extends ChangeNotifier {
  late AppsAuthDataProvider appsauthdataprovider;
  AppsAuthNotifier() {
    appsauthdataprovider = AppsAuthDataProvider(
      idUser: 0,
      tipeUser: "",
      tipeMesinKasir: "",
      username: "",
      password: "",
      token: "",
      companyName: "",
      companyAddress: "",
      companyPhone: "",
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
    sp.setString("tipeUser", appsAuthDataProvider.tipeUser);
    sp.setString("tipeMesinKasir", appsAuthDataProvider.tipeMesinKasir);
    sp.setString("username", appsAuthDataProvider.username);
    sp.setString("password", appsAuthDataProvider.password);
    sp.setString("token", appsAuthDataProvider.token);
    sp.setString("companyName", appsAuthDataProvider.companyName);
    sp.setString("companyAddress", appsAuthDataProvider.companyPhone);
    sp.setBool("isLogin", true);

    appsauthdataprovider = appsAuthDataProvider;
    notifyListeners();
  }

// load data if user come back to apps (or apps closed)
  void loadUserData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    appsauthdataprovider = AppsAuthDataProvider(
      idUser: sp.getInt("idUser") ?? 0,
      tipeUser: sp.getString("tipeUser") ?? "",
      tipeMesinKasir: sp.getString("tipeMesinKasir") ?? "",
      username: sp.getString("username") ?? "",
      password: sp.getString("password") ?? "",
      token: sp.getString("token") ?? "",
      companyName: sp.getString("companyName") ?? "",
      companyAddress: sp.getString("companyAddress") ?? "",
      companyPhone: sp.getString("companyPhone") ?? "",
      isLogin: sp.getBool("isLogin") ?? true,
    );
    notifyListeners();
  }

  //logout
  void logOut() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt("idUser", 0);
    sp.setString("tipeUser", "");
    sp.setString("tipeMesinkasir", "");
    sp.setString("username", "");
    sp.setString("passowrd", "");
    sp.setString("token", "");
    sp.setString("companyName", "");
    sp.setString("companyPhone", "");
    sp.setBool("isLogin", false);
    appsauthdataprovider;
    notifyListeners();
  }
}
