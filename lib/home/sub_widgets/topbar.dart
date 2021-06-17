import 'package:flutter/material.dart';
import 'package:uniq_dashboard/schedule/schedule.dart';


class Topbar extends StatelessWidget {
   final BoxConstraints size;
  const Topbar({
    Key? key, required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Material(
          elevation: 3,
          child: Container(
            height: size.maxHeight < 50 ? size.maxHeight : 50,
            width: size.maxWidth - 250,
            color: Color(0xfffcfcfc),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Dashboard")),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        child: Image.asset("assets/images/icons/search.png"),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Image.asset("assets/images/icons/notif.png"),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/icons/People.png",
                        ),
                        radius: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Schedule(size: size)
      ],
    );
  }
}
