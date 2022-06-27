import 'package:flutter/material.dart';
import 'package:helloatty/constants/app_colors.dart';
import 'package:helloatty/constants/app_dimens.dart';
import 'package:helloatty/constants/app_styles.dart';
import 'package:helloatty/constants/app_texts.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_button.dart';
import 'package:helloatty/ui/widgets/app_buttons/default_outlined_button.dart';
import 'package:helloatty/ui/widgets/app_cards/default_card.dart';
import 'package:helloatty/ui/widgets/app_inputs/bordered_textfield.dart';
import 'package:helloatty/ui/widgets/main_container.dart';
import 'package:helloatty/ui/widgets/temp_container.dart';
import 'package:helloatty/utils/utils.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    double inputWidth = appSize(context).width / 2.5;
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: MainContainer(
              title: 'Calendar',
              content: SfCalendar(
                view: CalendarView.month,
                dataSource: MeetingDataSource(_getDataSource()),
                monthViewSettings: const MonthViewSettings(
                    appointmentDisplayMode:
                        MonthAppointmentDisplayMode.appointment),
              )),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: size70,
              ),
              const Text(
                "Today's Schedule",
                style: kHeader3TextStyle,
              ),
              _todayscheduleItems()
            ],
          ),
        )
      ],
    );
  }

  _todayscheduleItems() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DefaultCard(
              width: 230,
              height: 280,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: size30,
                        backgroundImage: NetworkImage(
                            'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
                      ),
                      Column(
                        children: const [
                          Text(
                            '11',
                            style: kHeaderTextStyle,
                          ),
                          Text(
                            'March',
                            style: kActiveColorTextStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: size15,
                  ),
                  const Text(
                    'Joshua Snow',
                    style: kHeader2TextStyle,
                  ),
                  const Text(
                    'Client',
                    style: kSubtitleTextStyle,
                  ),
                  const SizedBox(
                    height: size20,
                  ),
                  const Text(
                    'Schedule',
                    style: kSubtitleTextStyle,
                  ),
                  Text(
                    'Wed, March 10, 2021 | 10:30 am',
                    style: kSubtitleTextStyle.copyWith(color: activeColor),
                  ),
                  const Text(
                    'https://zoom.us/meetings',
                    style: kSubtitleTextStyle,
                  )
                ],
              ),
            ),
            DefaultCard(
              width: 230,
              height: 280,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: size30,
                        backgroundImage: NetworkImage(
                            'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
                      ),
                      Column(
                        children: const [
                          Text(
                            '11',
                            style: kHeaderTextStyle,
                          ),
                          Text(
                            'March',
                            style: kActiveColorTextStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: size15,
                  ),
                  const Text(
                    'Joshua Snow',
                    style: kHeader2TextStyle,
                  ),
                  const Text(
                    'Client',
                    style: kSubtitleTextStyle,
                  ),
                  const SizedBox(
                    height: size20,
                  ),
                  const Text(
                    'Schedule',
                    style: kSubtitleTextStyle,
                  ),
                  Text(
                    'Wed, March 10, 2021 | 10:30 am',
                    style: kSubtitleTextStyle.copyWith(color: activeColor),
                  ),
                  const Text(
                    'https://zoom.us/meetings',
                    style: kSubtitleTextStyle,
                  )
                ],
              ),
            ),
            DefaultCard(
              width: 230,
              height: 280,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        radius: size30,
                        backgroundImage: NetworkImage(
                            'https://static1.colliderimages.com/wordpress/wp-content/uploads/2022/05/thor-recap-feature.jpg'),
                      ),
                      Column(
                        children: const [
                          Text(
                            '11',
                            style: kHeaderTextStyle,
                          ),
                          Text(
                            'March',
                            style: kActiveColorTextStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: size15,
                  ),
                  const Text(
                    'Joshua Snow',
                    style: kHeader2TextStyle,
                  ),
                  const Text(
                    'Client',
                    style: kSubtitleTextStyle,
                  ),
                  const SizedBox(
                    height: size20,
                  ),
                  const Text(
                    'Schedule',
                    style: kSubtitleTextStyle,
                  ),
                  Text(
                    'Wed, March 10, 2021 | 10:30 am',
                    style: kSubtitleTextStyle.copyWith(color: activeColor),
                  ),
                  const Text(
                    'https://zoom.us/meetings',
                    style: kSubtitleTextStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime = DateTime(today.year, today.month, today.day, 9);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting(
        'Conference', startTime, endTime, const Color(0xFF0F8644), false));
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
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
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

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
}
