import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:uniq_dashboard/schedule/sub_widgets/timeline/sub_widgets/timeline_iteam.dart';

class CustomTimeLine extends StatefulWidget {
  const CustomTimeLine({Key? key}) : super(key: key);

  @override
  _CustomTimeLineState createState() => _CustomTimeLineState();
}

class _CustomTimeLineState extends State<CustomTimeLine> {
  CalendarController _controller = new CalendarController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: SfCalendar(
        allowedViews: [CalendarView.day, CalendarView.schedule],
        allowViewNavigation: true,
        headerHeight: 50,
        controller: _controller,
        view: CalendarView.day,
        showDatePickerButton: true,
        dataSource: MeetingDataSource(_getDataSource()),
        appointmentBuilder: (context, CalendarAppointmentDetails cln) {
          Meeting meeting = cln.appointments.first;

          return TimeLineIteam(meeting: meeting);
        },
        monthViewSettings: const MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
      ),
    );
  }

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 3, 30, 0);
    final DateTime endTime =
        DateTime(today.year, today.month, today.day, 5, 0, 0);

    final DateTime startTime2 =
        DateTime(today.year, today.month, today.day, 1, 0, 0);
    final DateTime endTime2 =
        DateTime(today.year, today.month, today.day, 2, 30, 0);
    final DateTime startTime3 =
        DateTime(today.year, today.month, today.day, 5, 0, 0);
    final DateTime endTime3 =
        DateTime(today.year, today.month, today.day, 6, 30, 0);
    final DateTime startTime4 =
        DateTime(today.year, today.month, today.day, 10, 0, 0);
    final DateTime endTime4 =
        DateTime(today.year, today.month, today.day, 12, 0, 0);
    meetings.add(Meeting(
        'Conference',
        startTime,
        endTime,
        Colors.amber,
        false,
        "Progamming Basics",
        "Webinar Course",
        true,
        "01:00 - 02:30",
        "assets/images/icons/easel-outline.png",
        "Webinar"));
    meetings.add(Meeting(
        'Conference',
        startTime2,
        endTime2,
        Colors.green,
        false,
        "Progamming Basics",
        "Video Course",
        false,
        "03:30 - 05:00",
        "assets/images/icons/videocam-outline.png",
        ""));
    meetings.add(Meeting(
        'Conference',
        startTime3,
        endTime3,
        Colors.pink,
        false,
        "Progamming Basics",
        "One-to-One Class",
        true,
        "05:00 - 03:30",
        "assets/images/icons/people-outline.png",
        "Class"));
    meetings.add(Meeting(
        'Conference',
        startTime4,
        endTime4,
        Colors.purple[900]!,
        false,
        "Progamming Basics",
        "Quiz",
        false,
        "10:00 - 12:00",
        "assets/images/icons/clipboard-outline.png",
        ""));
    return meetings;
  }
}



class MeetingDataSource extends CalendarDataSource {
  // @override
  // CustomTimeLine() {
  //   return Container(
  //     width: 200,
  //     height: 50,
  //     color: Colors.red,
  //   );
  // }

  /// Creates a meeting data source, which used to set the appointment
  /// collection to the calendar
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  @override
  Color getColor(int index) {
    return _getMeetingData(index).background;
  }

  @override
  bool isAllDay(int index) {
    return _getMeetingData(index).isAllDay;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the event data which will be rendered in calendar.
class Meeting {
  /// Creates a meeting class with required details.
  Meeting(
      this.eventName,
      this.from,
      this.to,
      this.background,
      this.isAllDay,
      this.title1,
      this.title2,
      this.joinAble,
      this.time,
      this.icon,
      this.strForJoin);

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;

  /// Background which is equivalent to color property of [Appointment].
  Color background;

  /// IsAllDay which is equivalent to isAllDay property of [Appointment].
  bool isAllDay;
  String title1;
  String title2;
  bool joinAble;
  String time;
  String icon;
  String strForJoin;
}
