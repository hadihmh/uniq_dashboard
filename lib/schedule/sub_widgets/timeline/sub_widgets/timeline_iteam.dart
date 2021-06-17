import 'package:flutter/material.dart';
import 'package:uniq_dashboard/schedule/sub_widgets/timeline/timeline.dart';

class TimeLineIteam extends StatelessWidget {
  const TimeLineIteam({
    Key? key,
    required this.meeting,
  }) : super(key: key);

  final Meeting meeting;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: meeting.background.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: meeting.background,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Image.asset(
                  meeting.icon,
                  scale: 2,
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            meeting.title1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            meeting.title2,
                            style: TextStyle(
                                fontSize: 10, color: meeting.background),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            meeting.time,
                            style: TextStyle(
                                color: Colors.black45, fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                  meeting.joinAble
                      ? InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 7, vertical: 3),
                            height: 23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: meeting.background,
                            ),
                            child: Center(
                              child: Text(
                                "Join ${meeting.strForJoin} ",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            )
          ],
        ));
  }
}