// apps formfield login widget

import 'package:inventory_system/apps_common_libs.dart';
import 'package:inventory_system/view/admin/home/apps_admin_home_page.dart';

Widget appsFormLoginWidget(
  context,
  setState,
) {
  return Column(children: [
    Align(
        alignment: Alignment.center,
        child: Column(children: [
          Text(
            'Welcome to SiePOS',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'Login to your account',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ])),
    AppsPublicVariableResource.jarakheight32,
    AppsTextFieldWidget(
        keyField: AppsPublicVariableResource.keyUsername,
        controller: AppsPublicVariableResource.usernameController,
        jenisField: JenisField.universal,
        label: "Username",
        hintText: "username",
        namaField: "Username",
        maxLines: 1,
        keyboardType: TextInputType.text,
        suffixIcon: Icon(
          Icons.person,
          color: Theme.of(context).primaryColor,
        ),
        withValidaor: true,
        onChanged: (value) {},
        onsaved: (value) {
          AppsPublicVariableResource.username = value;
        }),
    AppsPublicVariableResource.jarakheight24,
    AppsTextFieldWidget(
        keyField: AppsPublicVariableResource.keyPassword,
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
    AppsPublicVariableResource.jarakheight32,
    AppsElevatedButton(
        title: "Login Account",
        colorText: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Theme.of(context).primaryColor,
        navigator: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const AdminHome()));
          // loginUser();
        }),
    AppsPublicVariableResource.jarakheight24,
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(child: basicDivider(context)),
        AppsPublicVariableResource.jarakwidth8,
        Text(
          "or",
          style: Theme.of(context).textTheme.bodyMedium,
          overflow: TextOverflow.ellipsis,
        ),
        AppsPublicVariableResource.jarakwidth8,
        Expanded(child: basicDivider(context)),
      ],
    ),
    AppsPublicVariableResource.jarakheight8,
    AppsElevatedButton(
        title: "Register Company",
        colorText: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        navigator: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AppsRegisterPage()));
        }),
  ]);
}