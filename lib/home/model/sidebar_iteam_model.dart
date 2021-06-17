import 'package:flutter/material.dart';

class SidebarIteamModel extends StatelessWidget {
  final String icon;
  final String name;
  const SidebarIteamModel({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 35),
        child: Row(
          children: [
            Image.asset(icon),
            SizedBox(
              width: 10,
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}
