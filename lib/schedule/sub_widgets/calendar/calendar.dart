import 'package:flutter/material.dart';
import 'package:uniq_dashboard/schedule/sub_widgets/calendar/model/calendar_model.dart';
import 'package:uniq_dashboard/schedule/sub_widgets/calendar/model/plans_model.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return ListView(
     
      children: [
        InkWell(
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200]),
            width: 120,
            // height: 50,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/icons/Calendar.png",
                  color: Colors.grey,
                  scale: 1.2,
                ),
                Text("Jan"),
                Text("2021"),
                Image.asset(
                  "assets/images/icons/Group.png",
                  color: Colors.grey,
                  scale: 1.2,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15, bottom: 8),
          width: 310,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Mon",
                style: TextStyle(color: Colors.amber),
              ),
              Text(
                "Tue",
                style: TextStyle(color: Colors.amber),
              ),
              Text(
                "Wed",
                style: TextStyle(color: Colors.amber),
              ),
              Text(
                "Thu",
                style: TextStyle(color: Colors.amber),
              ),
              Text(
                "Fri",
                style: TextStyle(color: Colors.amber),
              ),
              Text(
                "Sat",
                style: TextStyle(color: Colors.amber),
              ),
              Text(
                "Sun",
                style: TextStyle(color: Colors.amber),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 8),
          width: 310,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalendarModel(
                  width: 30, height: 30, txt: "29", color: Colors.grey[200]!),
              CalendarModel(
                  width: 30, height: 30, txt: "30", color: Colors.grey[200]!),
              CalendarModel(
                  width: 30, height: 30, txt: "31", color: Colors.grey[200]!),
              CalendarModel(
                  width: 30, height: 30, txt: "1", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "2", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "3", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "4", color: Colors.black)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 8),
          width: 310,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalendarModel(
                  width: 30, height: 30, txt: "5", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "6", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "7", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "8", color: Colors.black),
              CalendarModel(
                width: 30,
                height: 30,
                txt: "9",
                color: Colors.black,
                brdrWith: 1,
                brdrColor: Colors.amber,
              ),
              CalendarModel(
                  width: 30, height: 30, txt: "10", color: Colors.black),
              CalendarModel(
                width: 30,
                height: 30,
                txt: "11",
                color: Colors.white,
                bkColor: Colors.purple,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 8),
          width: 310,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalendarModel(
                  width: 30, height: 30, txt: "12", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "13", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "14", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "15", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "16", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "17", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "18", color: Colors.black)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 8),
          width: 310,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalendarModel(
                  width: 30, height: 30, txt: "19", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "20", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "21", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "22", color: Colors.black),
              CalendarModel(
                width: 30,
                height: 30,
                txt: "23",
                color: Colors.black,
                brdrWith: 1,
                brdrColor: Colors.amber,
              ),
              CalendarModel(
                  width: 30, height: 30, txt: "24", color: Colors.black),
              CalendarModel(
                width: 30,
                height: 30,
                txt: "25",
                color: Colors.black,
                brdrWith: 1,
                brdrColor: Colors.amber,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15),
          width: 310,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalendarModel(
                  width: 30, height: 30, txt: "26", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "27", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "28", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "29", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "30", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "31", color: Colors.black),
              CalendarModel(
                  width: 30, height: 30, txt: "32", color: Colors.black)
            ],
          ),
        ),
        Divider(),
        Container(
          width: 310,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Upcoming plans",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "11 january",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "Today",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        PlansModel(
            time: "08:00 AM",
            color: Colors.green,
            title: "Progamming Basics",
            sub: "Webinar Course"),
        PlansModel(
            time: "11:00 AM",
            color: Colors.amber,
            title: "Java Progamming",
            sub: "Video Course"),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: InkWell(
            onTap: (){},
            child: Text(
              "23 january",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        PlansModel(
            time: "09:00 AM",
            color: Colors.red,
            title: "Progamming Basics",
            sub: "One-to-One Class"),
        PlansModel(
            time: "13:00 PM",
            color: Colors.blue,
            title: "Java Progamming",
            sub: "Homework"),
        PlansModel(
            time: "16:00 PM",
            color: Colors.purple,
            title: "Java Progamming",
            sub: "Quiz"),
      ],
    );
  }
}
