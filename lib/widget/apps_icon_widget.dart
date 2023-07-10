// app icon
import 'package:inventory_system/apps_common_libs.dart';

enum IconType { imageIconButton, materialIconButton, materialIcon }

class AppsIconWidget extends StatelessWidget {
  final dynamic colorIcon;
  final IconType iconType;
  final dynamic uriIcon;
  final dynamic customSizeIcon;
  final dynamic onPressIconButton;
  const AppsIconWidget({
    super.key,
    this.colorIcon,
    required this.iconType,
    this.uriIcon,
    this.customSizeIcon,
    this.onPressIconButton,
  });

  @override
  Widget build(BuildContext context) {
    const double defaultSize = 24.0;
    return (iconType == IconType.imageIconButton)
        ? IconButton(
            onPressed: onPressIconButton,
            icon: ImageIcon(
              uriIcon,
              size: (customSizeIcon == null) ? defaultSize : customSizeIcon,
            ))
        : (iconType == IconType.materialIconButton)
            ? IconButton(
                onPressed: onPressIconButton,
                icon: Icon(
                  uriIcon,
                  size: (customSizeIcon == null) ? defaultSize : customSizeIcon,
                  color: colorIcon,
                ))
            : Icon(
                uriIcon,
                size: (customSizeIcon == null) ? defaultSize : customSizeIcon,
                color: colorIcon,
              );
  }
}
