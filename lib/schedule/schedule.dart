import 'package:flutter/material.dart';
import 'package:uniq_dashboard/schedule/sub_widgets/calendar/calendar.dart';
import 'package:uniq_dashboard/schedule/sub_widgets/timeline/timeline.dart';


class Schedule extends StatelessWidget {
  const Schedule({
    Key? key,
    required this.size,
  }) : super(key: key);

  final BoxConstraints size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: size.maxWidth - 580,
          height: size.maxHeight - 50,
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: CustomTimeLine(),
          ),
        ),
        Container(
            width: size.maxWidth < 580 ? 0 : 330,
            height: size.maxHeight < 200 ? 0 : size.maxHeight - 50,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: <Color>[
                Color(0xffeff0f6),
                Color(0xfff2f3f7),
              ],
            )),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Calendar"),
                    Divider(),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        width: size.maxWidth < 330 + 250 ? 0 : 330,
                        height: size.maxHeight < 200 ? 0 : size.maxHeight - 182,
                        child: Calender()),
                  ],
                ))),
      ],
    );
  }
}
