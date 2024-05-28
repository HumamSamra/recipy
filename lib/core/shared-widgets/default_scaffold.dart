import 'package:flutter/material.dart';

class DefaultScaffold extends StatelessWidget {
  final Widget? child;
  final PreferredSizeWidget? appBar;
  const DefaultScaffold({
    super.key,
    this.child,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(child: child ?? const Center()),
    );
  }
}
