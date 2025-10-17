import 'package:shadcn_flutter/shadcn_flutter.dart';

class Event {
  String eventName;
  DateTime date;
  String description;

  Event({
    required this.eventName,
    required this.date,
    required this.description,
  });
}

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Event> events = [
      Event(
        eventName: 'Tech Conference 2025',
        date: DateTime.now(),
        description: 'description',
      ),
      Event(
        eventName: 'Money Lorem 2025',
        date: DateTime.now(),
        description: 'description',
      ),
      Event(
        eventName: 'Tech Money 2025',
        date: DateTime.now(),
        description: 'description',
      ),
      Event(
        eventName: 'Tech Charity 2025',
        date: DateTime.now(),
        description: 'description',
      ),
    ];

    return Scaffold(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Events').h1,
              Button.primary(
                leading: Icon(Icons.add),
                child: Text('New Event'),
              ),
            ],
          ),
          gap(24),
          Table(
            rows: [
              TableRow(
                cellTheme: TableCellTheme(
                  backgroundColor: WidgetStatePropertyAll(Colors.cyan.shade100),
                ),
                cells: [
                  TableCell(
                    child: Text('Event Name').muted.withPadding(all: 8),
                  ),
                  TableCell(child: Text('Date').muted.withPadding(all: 8)),
                  TableCell(
                    child: Text('Description').muted.withPadding(all: 8),
                  ),
                  TableCell(child: Text('').muted.withPadding(all: 8)),
                ],
              ),

              ...List.generate(events.length, (index) {
                return TableRow(
                  cells: [
                    TableCell(
                      child: Text(events[index].eventName).withPadding(all: 8),
                    ),
                    TableCell(
                      child: Text(
                        events[index].date.toString(),
                      ).withPadding(all: 8),
                    ),
                    TableCell(
                      child: Text(
                        events[index].description,
                      ).withPadding(all: 8),
                    ),
                    TableCell(
                      child:
                          Button.text(
                            onPressed: () {},
                            child: Text('Edit'),
                          ).xSmall,
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
