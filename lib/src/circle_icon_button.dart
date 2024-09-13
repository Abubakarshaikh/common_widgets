import 'package:common_widgets/src/extensions/buildcontext/theme_extension.dart';
import 'package:common_widgets/src/utils/icons_utils.dart';
import 'package:common_widgets/src/utils/padding_utils.dart';
import 'package:common_widgets/src/utils/radius_utils.dart';
import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    required this.onTap,
    super.key,
    this.icon = IconUtils.add,
  });

  final void Function() onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onTap,
      child: Container(
        padding: PaddingUtils.k4All,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(RadiusUtils.k2Radius),
          color: context.colorScheme.primary,
        ),
        child: Icon(
          icon,
          size: 12,
          color: context.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
