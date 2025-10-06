import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:ui_scratch/login_page.dart';
import 'create_admin_page.dart';

void main() {
  runApp(
    ShadcnApp(
      theme: ThemeData(colorScheme: ColorSchemes.darkZinc(), radius: 0.5),
      home: const LoginPage(),
    ),
  );
}
