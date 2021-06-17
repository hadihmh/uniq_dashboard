import 'package:flutter/material.dart';
import 'package:uniq_dashboard/home/model/sidebar_iteam_model.dart';

class Sidebar extends StatelessWidget {
  final BoxConstraints size;
  const Sidebar({
    Key? key, required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: Container(
        color: Color(0xfffcfcfc),
        // padding: EdgeInsets.symmetric(vertical: 0),
        width: 250,
        height: size.maxHeight,
        child: ListView(
          children: [
            Image.asset(
              "assets/images/logo/uniq.png",
              scale: 1.2,
            ),
            SidebarIteamModel(
                icon: "assets/images/icons/dash.png", name: "Dashboard"),
            SizedBox(
              height: 40,
            ),
            SidebarIteamModel(
                icon: "assets/images/icons/Folder.png", name: "My Courses"),
            SizedBox(
              height: 40,
            ),
            SidebarIteamModel(
                icon: "assets/images/icons/Calendar.png", name: "Schedule"),
            SizedBox(
              height: 40,
            ),
            SidebarIteamModel(
                icon: "assets/images/icons/homework.png", name: "Homework"),
            SizedBox(
              height: 40,
            ),
            SidebarIteamModel(
                icon: "assets/images/icons/Document.png", name: "Quizes"),
            SizedBox(
              height: 40,
            ),
            SidebarIteamModel(
                icon: "assets/images/icons/Wallet.png", name: "Transactions"),
            SizedBox(
              height: 40,
            ),
            SidebarIteamModel(icon: "assets/images/icons/Chat.png", name: "Support"),
            SizedBox(
              height: 40,
            ),
            SidebarIteamModel(
                icon: "assets/images/icons/Setting.png", name: "Setting"),
          ],
        ),
      ),
    );
  }
}
