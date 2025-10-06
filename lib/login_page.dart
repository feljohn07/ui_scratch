import "package:shadcn_flutter/shadcn_flutter.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                      children: [Text('Login', textAlign: TextAlign.center).h1],
                    ),
                  ),

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

                  gap(24),
                  SizedBox(
                    width: double.infinity,
                    child: Button.primary(child: Text('Login')),
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
