import 'package:flutter/material.dart';

class PopupMen extends StatelessWidget {
  final List<PopupMenuEntry> MenuList;
  final Widget? icon;

  const PopupMen({Key? key, required this.MenuList, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      constraints:  BoxConstraints.expand(width: MediaQuery.of(context).size.width*0.55, height: 350),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: ((context) => MenuList),
      icon: icon,
    );
  }
}
