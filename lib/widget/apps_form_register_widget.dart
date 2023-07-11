// apps formfield register widget

import 'package:inventory_system/apps_common_libs.dart';

Widget appsFormRegisterWidget(
  context,
  setState,
) {
  return Column(children: [
    AppsTextFieldWidget(
        controller: AppsPublicVariableResource.emailController,
        jenisField: JenisField.universal,
        label: "Email",
        hintText: "email",
        namaField: "Email",
        maxLines: 1,
        keyboardType: TextInputType.text,
        suffixIcon: Icon(
          Icons.person,
          color: Theme.of(context).primaryColor,
        ),
        withValidaor: true,
        onChanged: (value) {},
        onsaved: (value) {
          AppsPublicVariableResource.email = value;
        }),
    AppsPublicVariableResource.jarakheight24,
    AppsTextFieldWidget(
        controller: AppsPublicVariableResource.passwordController,
        jenisField: JenisField.password,
        label: "Password",
        hintText: "user password",
        namaField: "Password",
        maxLines: 1,
        keyboardType: TextInputType.text,
        suffixIcon: IconButton(
          icon: (AppsPublicVariableResource.obscureText)
              ? Icon(
                  Icons.visibility_off,
                  color: Theme.of(context).primaryColor,
                )
              : Icon(
                  Icons.visibility,
                  color: Theme.of(context).primaryColor,
                ),
          onPressed: () {
            setState(() {
              AppsPublicVariableResource.obscureText =
                  !AppsPublicVariableResource.obscureText;
            });
          },
        ),
        withValidaor: true,
        onChanged: (value) {},
        onsaved: (value) {
          AppsPublicVariableResource.password = value;
        }),
    AppsPublicVariableResource.jarakheight24,
    AppsElevatedButton(
        title: "Register",
        navigator: () {
          registerUser();
        },
        colorText: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Theme.of(context).primaryColor)
  ]);
}
