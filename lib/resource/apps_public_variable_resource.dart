// apps public variable

import 'dart:io';

import 'package:inventory_system/apps_common_libs.dart';

class AppsPublicVariableResource {
  //jarak
  static Widget jarakheight8 = const SizedBox(
    height: 8,
  );
  static Widget jarakheight16 = const SizedBox(
    height: 16,
  );
  static Widget jarakheight24 = const SizedBox(
    height: 24,
  );
  static Widget jarakheight32 = const SizedBox(
    height: 32,
  );

  //width
  static Widget jarakwidth8 = const SizedBox(
    width: 8,
  );
  static Widget jarakwidth16 = const SizedBox(
    width: 16,
  );
  static Widget jarakwidth24 = const SizedBox(
    width: 24,
  );
  static Widget jarakwidth32 = const SizedBox(
    width: 32,
  );

  //keylogin
  static GlobalKey<FormState> keyLogin = GlobalKey<FormState>();
  static Key keyUsername = GlobalKey();
  static Key keyPassword = GlobalKey();
  //keyregist
  static GlobalKey<FormState> keyRegist = GlobalKey<FormState>();
  static Key keyUserReg = GlobalKey();
  static Key keyPassReg = GlobalKey();
  static Key keyCompName = GlobalKey();
  static Key keyCompAdd = GlobalKey();
  static Key keyCompPhone = GlobalKey();

  // user variable
  static int idUser = 0;
  static String tipeUser = "";
  static String tipeMesinKasir = "";
  //
  static String imageString = "";
  static File? imageFile;
  //
  static String username = "";
  static String password = "";
  static String token = "";
  static String companyName = "";
  static String companyAddress = "";
  static String companyPhone = "";

  //controller data user for auth, register, and update data
  static TextEditingController usernameController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
  static TextEditingController compNameController = TextEditingController();
  static TextEditingController compAddressController = TextEditingController();
  static TextEditingController comPhoneController = TextEditingController();

  //obscure textvalue passowrd
  static bool obscureText = true;

  // crud dog with sqf lite
  static GlobalKey<FormState> formKeyDog = GlobalKey<FormState>();

  static String namedog = "";
  static int agedog = 0;

  static TextEditingController namedogController = TextEditingController();
  static TextEditingController agedogController = TextEditingController();
}
