// clip shadow page loginpage

import 'package:inventory_system/apps_common_libs.dart';

class ClipShadowPathWidget extends StatelessWidget {
  final Shadow shadow;
  final CustomClipper<Path> clipper;
  final Widget childProperty;

  // ignore: use_key_in_widget_constructors
  const ClipShadowPathWidget({
    required this.shadow,
    required this.clipper,
    required this.childProperty,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      key: UniqueKey(),
      painter: _ClipShadowShadowPainter(
        clipper: clipper,
        shadow: shadow,
      ),
      child: ClipPath(clipper: clipper, child: childProperty),
    );
  }
}

class _ClipShadowShadowPainter extends CustomPainter {
  final Shadow shadow;
  final CustomClipper<Path> clipper;

  _ClipShadowShadowPainter({required this.shadow, required this.clipper});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size).shift(shadow.offset);
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
