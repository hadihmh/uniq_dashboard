import 'package:flutter/material.dart';

class PlansModel extends StatelessWidget {
  final String time;
  final Color color;
  final String title;
  final String sub;
  const PlansModel({
    Key? key,
    required this.time,
    required this.color,
    required this.title,
    required this.sub,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Color(0xffeff0f6)),
        child: Row(
          children: [
            Text(time),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 30,
              width: 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: color),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  sub,
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
