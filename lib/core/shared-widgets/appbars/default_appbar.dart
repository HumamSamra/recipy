import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool implyLeading;
  final Widget? trailing;
  const DefaultAppBar({
    super.key,
    this.title = '',
    this.trailing,
    this.implyLeading = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      automaticallyImplyLeading: implyLeading,
      actions: trailing != null
          ? [
              trailing!,
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
