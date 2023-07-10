// app stail term and policy widget

import 'package:inventory_system/apps_common_libs.dart';


Widget tailTermandPrivacyPolicies(context) {
  final bodysmall = Theme.of(context).textTheme.bodySmall;
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "By clicking button above, you agree to our",
          style: bodysmall,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
          child: Center(
            child: AppsTextButton(
                titleText: "term of use and privacy policies",
                onPressTextButton: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AppsTermandPrivPage()));
                },
                styleTextButton: bodysmall!.copyWith(
                  color: Colors.lightBlue,
                )),
          ),
        ),
      ],
    ),
  );
}
