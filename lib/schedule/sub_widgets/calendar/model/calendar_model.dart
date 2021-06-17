import 'package:flutter/material.dart';

class CalendarModel extends StatelessWidget {
  final double width;
  final double height;
  final String txt;
  final Color color;
  final Color bkColor;
  final double brdrWith;
  final Color brdrColor;
  final double brdrRaduse;
  const CalendarModel(
      {Key? key,
      this.brdrWith = 0,
      this.brdrRaduse = 5,
      this.brdrColor = Colors.white,
      required this.width,
      required this.height,
      required this.txt,
      this.bkColor = Colors.white,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                bkColor,
                bkColor.withOpacity(0.7),
              ],
            ),
            border: Border.all(width: brdrWith, color: brdrColor),
            borderRadius: BorderRadius.circular(brdrRaduse)),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(color: color, fontSize: 10),
          ),
        ),
      ),
    );
  }
}
