// apps curve cliper login

import 'package:inventory_system/apps_common_libs.dart';

//-> curve cliper untuk posisi device vertical
class AppsCurveCliperWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 25;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
