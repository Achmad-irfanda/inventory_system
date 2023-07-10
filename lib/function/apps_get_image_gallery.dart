// function to get image from gallery

import 'dart:io';

import 'package:inventory_system/apps_common_libs.dart';

Future getImageGallery(setState) async {
  final ImagePicker picker = ImagePicker();
  final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  File file = File(image!.path);
  setState(() {
    AppsPublicVariableResource.imageFile = file;
  });
}
