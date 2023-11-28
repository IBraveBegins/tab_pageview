import 'package:flutter/material.dart';

///PageView
class TabPageView extends StatefulWidget {
  final String tabName;
  const TabPageView({super.key, required this.tabName});

  @override
  State<TabPageView> createState() => _TabPageViewState();
}

class _TabPageViewState extends State<TabPageView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context); //不要忘记加
    debugPrint("TabPageView:build ${widget.tabName}");
    return Center(
      child: Text(
        widget.tabName,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true; //返回true
}
