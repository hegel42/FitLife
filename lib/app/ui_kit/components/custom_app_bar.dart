import 'package:fitness_app/app/ui_kit/models/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _kDefaultElevation = 3.0;

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.subTitle,
    this.actions,
    this.elevation = _kDefaultElevation,
    this.icon,
    this.backgroundColor,
    this.systemOverlayStyle,
    this.centerTitle,
    this.leading,
  });

  final String? title;

  final String? subTitle;

  final double? elevation;

  final List<Widget>? actions;

  final Widget? icon;

  final Color? backgroundColor;

  final SystemUiOverlayStyle? systemOverlayStyle;

  final bool? centerTitle;

  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //  automaticallyImplyLeading: false,
      backgroundColor: backgroundColor ?? ColorPallete.primary,
      centerTitle: centerTitle ?? false,
      actions: actions,
      elevation: elevation,
      systemOverlayStyle: systemOverlayStyle,
      leading: leading,
      title: (title?.isNotEmpty == true)
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: icon,
                ),
                const SizedBox(width: 6),
                Text(
                  title!,
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
