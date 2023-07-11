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
  //keyregist
  static GlobalKey<FormState> keyRegist = GlobalKey<FormState>();

  // user variable
  static int idUser = 0;
  static String tipeUser = "";
  static String tipeMesinKasir = "";
  //
  static String imageString = "";
  static File? imageFile;
  //
  static String email = "";
  static String password = "";

  //controller data user for auth, register, and update data
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();

  //obscure textvalue passowrd
  static bool obscureText = true;


}
