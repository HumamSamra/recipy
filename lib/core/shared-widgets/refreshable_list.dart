import 'package:flutter/material.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:recipes/core/shared-widgets/default_scaffold.dart';

class RefreshableList extends StatelessWidget {
  final Function()? onRefhresh;
  final Function()? onLoading;
  final List<Widget> children;
  final bool enableRefresh;
  final bool enableLoading;
  final RefreshController? refreshController;
  final EdgeInsets margin;
  const RefreshableList({
    super.key,
    this.onRefhresh,
    this.onLoading,
    required this.children,
    this.enableLoading = true,
    this.enableRefresh = true,
    this.refreshController,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      child: Padding(
        padding: margin,
        child: SmartRefresher(
          enablePullDown: enableRefresh,
          enablePullUp: enableLoading,
          header: const ClassicHeader(
            refreshStyle: RefreshStyle.Behind,
          ),
          footer: const ClassicFooter(
            loadStyle: LoadStyle.ShowWhenLoading,
          ),
          controller: refreshController ?? RefreshController(),
          onRefresh: onRefhresh,
          onLoading: onLoading,
          child: ListView(
            children: children,
          ),
        ),
      ),
    );
  }
}
