import 'package:shadcn_flutter/shadcn_flutter.dart';

enum ParticipantStatus { unpaid, paid, confirmed, cancelled }

class Participant {
  String name;
  String email;
  ParticipantStatus status;
  bool attended;
  bool canReceiveCertificate;

  Participant({
    required this.name,
    required this.email,
    required this.status,
    required this.attended,
    required this.canReceiveCertificate,
  });
}

class EventAttendancePage extends StatelessWidget {
  const EventAttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    String eventName = 'Tech Lorem Conference';

    List<Participant> participants = [
      Participant(
        name: 'name',
        email: 'email',
        status: ParticipantStatus.unpaid,
        attended: false,
        canReceiveCertificate: false,
      ),
      Participant(
        name: 'name',
        email: 'email',
        status: ParticipantStatus.unpaid,
        attended: false,
        canReceiveCertificate: false,
      ),
      Participant(
        name: 'name',
        email: 'email',
        status: ParticipantStatus.unpaid,
        attended: false,
        canReceiveCertificate: false,
      ),
      Participant(
        name: 'name',
        email: 'email',
        status: ParticipantStatus.unpaid,
        attended: false,
        canReceiveCertificate: false,
      ),
    ];

    return Scaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [Text('Attendance').h1, Text('Event: $eventName').muted],
              ),
              Row(
                
                children: [
                  Card(
                    child: Column(children: [Text('3').h3, Text('Confirmed').muted]),
                  ),
                  gap(14),
                  Card(
                    child: Column(children: [Text('3').h3, Text('Attended').muted]),
                  ),
                ],
              ),
            ],
          ),
          gap(32),
          Row(
            children: [
              Flexible(
                child: TextField(
                  features: [InputFeature.leading(Icon(Icons.search))],
                  placeholder: Text('Search participants by name, or email'),
                ),
              ),
              gap(14),
              Button.primary(child: Text('Save attendance')),
            ],
          ),
          gap(14),
          Table(
            rows: [
              TableRow(
                cellTheme: TableCellTheme(
                  backgroundColor: WidgetStatePropertyAll(Colors.cyan.shade100),
                ),
                cells: [
                  TableCell(child: Text('Name').muted.withPadding(all: 8)),
                  TableCell(child: Text('Email').muted.withPadding(all: 8)),
                  TableCell(child: Text('Status').muted.withPadding(all: 8)),
                  TableCell(
                    child: Center(
                      child: Text('Attended').muted.withPadding(all: 8),
                    ),
                  ),
                  TableCell(
                    child: Center(
                      child: Text(
                        'Release Certificate',
                      ).muted.withPadding(all: 8),
                    ),
                  ),
                ],
              ),

              ...List.generate(participants.length, (index) {
                return TableRow(
                  cells: [
                    TableCell(
                      child: Text(participants[index].name).withPadding(all: 8),
                    ),
                    TableCell(
                      child: Text(
                        participants[index].email,
                      ).withPadding(all: 8),
                    ),
                    TableCell(
                      child: Text(
                        participants[index].status.name,
                      ).withPadding(all: 8),
                    ),
                    TableCell(
                      child: Center(
                        child: Checkbox(
                          state:
                              participants[index].attended
                                  ? CheckboxState.checked
                                  : CheckboxState.unchecked,
                          onChanged: (attended) {},
                        ),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Checkbox(
                          state:
                              participants[index].canReceiveCertificate
                                  ? CheckboxState.checked
                                  : CheckboxState.unchecked,
                          onChanged: (canReceiveCertificate) {},
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        ],
      ).withPadding(all: 24),
    );
  }
}
