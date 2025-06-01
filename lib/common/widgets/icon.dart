import 'package:flutter/material.dart';
import 'package:sgm_admin/utils/extensions/theme_data_extension.dart';
import 'package:svg_flutter/svg.dart';

class KIcon extends StatelessWidget {
  final String path;
  final Color? color;
  final double? size;
  final LinearGradient? linearGradient;
  final Function()? onPressed;
  const KIcon(
    this.path, {
    super.key,
    this.color,
    this.size,
    this.onPressed,
    this.linearGradient,
  });

  @override
  Widget build(BuildContext context) {
    Widget icon;
    icon = SvgPicture.asset(
      path,
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(
        color ?? context.kColors.iconDefault,
        BlendMode.srcIn,
      ),
    );

    if (linearGradient != null) {
      icon = ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) {
          return linearGradient!.createShader(bounds);
        },
        child: icon,
      );
    }
    return GestureDetector(onTap: onPressed ?? () {}, child: icon);
  }
}
