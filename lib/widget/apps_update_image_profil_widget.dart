// widget for update image profil

import 'package:inventory_system/apps_common_libs.dart';
import 'package:inventory_system/function/apps_get_image_camera.dart';
import 'package:inventory_system/function/apps_get_image_gallery.dart';
import 'package:inventory_system/function/apps_show_modal_bottom_sheet.dart';

enum PagePosition { register, profile }

Widget appsUpdateImageProfileWidget(
  context,
  setState,
  PagePosition pagePosition,
) {
  return Column(
    children: [
      Center(
          child: Container(
              margin: const EdgeInsets.only(top: 16, bottom: 8),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 2),
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: (AppsPublicVariableResource.imageFile != null ||
                      AppsPublicVariableResource.imageString != "")
                  ? Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.file(
                              AppsPublicVariableResource.imageFile!,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor)),
                              child: AppsIconWidget(
                                iconType: IconType.materialIconButton,
                                uriIcon: Icons.delete_sharp,
                                colorIcon: Colors.red,
                                customSizeIcon: 28.0,
                                onPressIconButton: () {
                                  setState(() {
                                    AppsPublicVariableResource.imageFile = null;
                                  });
                                },
                              ),
                            ))
                      ],
                    )
                  : AppsIconWidget(
                      iconType: IconType.materialIconButton,
                      uriIcon: Icons.add_a_photo_outlined,
                      onPressIconButton: () {
                        appsShowModalBottomSheet(context, [
                          AppsElevatedButton(
                              title: "Gallery",
                              backgroundColor: Theme.of(context).primaryColor,
                              colorText:
                                  Theme.of(context).scaffoldBackgroundColor,
                              navigator: () {
                                Navigator.of(context).pop();
                                getImageGallery(setState);
                              }),
                          const SizedBox(height: 8),
                          AppsElevatedButton(
                              backgroundColor: Theme.of(context).primaryColor,
                              title: "Camera",
                              colorText:
                                  Theme.of(context).scaffoldBackgroundColor,
                              navigator: () {
                                Navigator.of(context).pop();
                                getImageCamera(setState);
                              }),
                        ]);
                      },
                    ))),
      Text(
        "Add Profil Photo",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ],
  );
}
