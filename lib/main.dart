import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:ui_scratch/event_management_system_uis/event_attendance_page.dart';
import 'package:ui_scratch/event_management_system_uis/events_page.dart';
import 'package:ui_scratch/login_page.dart';
import 'create_admin_page.dart';

void main() {
  runApp(
    ShadcnApp(
      theme: ThemeData(colorScheme: ColorSchemes.lightBlue(), radius: 0.5),
      home: const EventAttendancePage(),
    ),
  );
}
