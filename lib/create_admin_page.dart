import "package:shadcn_flutter/shadcn_flutter.dart";

class CreateAdminPage extends StatefulWidget {
  const CreateAdminPage({super.key});

  @override
  State<CreateAdminPage> createState() => _CreateAdminPageState();
}

class _CreateAdminPageState extends State<CreateAdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      child: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 400,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Create your Admin Account',
                          textAlign: TextAlign.center,
                        ).h1,
                        Text('Welcome! Let\'s get you set up.'),
                      ],
                    ),
                  ),
                  gap(24),
                  Text('Full Name'),
                  gap(4),
                  TextField(
                    placeholder: Text('John Doe'),
                    features: [InputFeature.leading(Icon(Icons.person))],
                  ),
                  gap(14),
                  Text('Email'),
                  gap(4),
                  TextField(
                    placeholder: Text('example@email.com'),
                    features: [InputFeature.leading(Icon(Icons.email))],
                  ),
                  gap(14),
                  Text('Password'),
                  gap(4),
                  TextField(
                    placeholder: Text('Password'),
                    obscureText: true,
                    features: [InputFeature.leading(Icon(Icons.password))],
                  ),
                  gap(14),
                  Text('[x] At least 8 characters'),
                  Text('[x] Contains a number'),
                  Text('[x] Contnumber special character (!@#\$%)'),
                  gap(14),
                  Text('Confirm Password'),
                  gap(4),

                  TextField(
                    placeholder: Text('Password'),
                    obscureText: true,
                    features: [InputFeature.leading(Icon(Icons.password))],
                  ),
                  gap(14),
                  Text('Business Name'),
                  gap(4),
                  TextField(
                    placeholder: Text('Your Company Inc.'),
                    obscureText: true,
                    features: [InputFeature.leading(Icon(Icons.cases))],
                  ),
                  gap(24),
                  SizedBox(
                    width: double.infinity,
                    child: Button.primary(child: Text('Create Admin Account')),
                  ),
                  gap(24),
                ],
              ),
            ),
          ),
        ).withPadding(all: 32),
      ),
    );
  }
}
