// apps formfield register widget

import 'package:inventory_system/apps_common_libs.dart';

Widget appsFormRegisterWidget(
  context,
  setState,
) {
  return Column(children: [
    AppsTextFieldWidget(
        keyField: AppsPublicVariableResource.keyUserReg,
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
        keyField: AppsPublicVariableResource.keyPassReg,
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
    AppsTextFieldWidget(
        keyField: AppsPublicVariableResource.keyCompName,
        controller: AppsPublicVariableResource.compNameController,
        jenisField: JenisField.universal,
        label: "Company Name",
        hintText: "siepos company",
        namaField: "Company Name",
        maxLines: 1,
        keyboardType: TextInputType.text,
        suffixIcon: Icon(
          Icons.contact_mail_outlined,
          color: Theme.of(context).primaryColor,
        ),
        withValidaor: true,
        onChanged: (value) {},
        onsaved: (value) {
          AppsPublicVariableResource.companyName = value;
        }),
    AppsPublicVariableResource.jarakheight24,
    AppsTextFieldWidget(
        keyField: AppsPublicVariableResource.keyCompAdd,
        controller: AppsPublicVariableResource.compAddressController,
        jenisField: JenisField.universal,
        label: "Company Address",
        hintText: "surabaya, indonesia",
        namaField: "Company Address",
        maxLines: 2,
        keyboardType: TextInputType.text,
        suffixIcon: Icon(
          Icons.pin_drop_sharp,
          color: Theme.of(context).primaryColor,
        ),
        withValidaor: true,
        onChanged: (value) {},
        onsaved: (value) {
          AppsPublicVariableResource.companyAddress = value;
        }),
    AppsPublicVariableResource.jarakheight24,
    AppsTextFieldWidget(
        keyField: AppsPublicVariableResource.keyCompPhone,
        controller: AppsPublicVariableResource.comPhoneController,
        jenisField: JenisField.phone,
        label: "Company Phone",
        hintText: "8223-0988-9000",
        namaField: "Company Phone",
        maxLines: 1,
        prefixText: "(+62) ",
        keyboardType: TextInputType.number,
        suffixIcon: Icon(
          Icons.phone,
          color: Theme.of(context).primaryColor,
        ),
        withValidaor: true,
        onChanged: (value) {},
        onsaved: (value) {
          AppsPublicVariableResource.companyAddress = value;
        }),
    AppsPublicVariableResource.jarakheight24,
    AppsPublicVariableResource.jarakheight32,
    AppsElevatedButton(
        title: "Register",
        navigator: () {
          registerUser();
        },
        colorText: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Theme.of(context).primaryColor)
  ]);
}