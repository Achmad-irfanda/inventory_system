// function to get image from camera

import 'dart:io';

import 'package:inventory_system/apps_common_libs.dart';

Future getImageCamera(
  setState,
) async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.camera);
  File file = File(image!.path);
  setState(() {
    AppsPublicVariableResource.imageFile = file;
  });
}
