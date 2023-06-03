import 'package:flutter/material.dart';
import 'package:rickandmorty/ui/pages/loginAndRegister/show_error_dialog.dart';

import '../../../constants/routes.dart';
import '../../../service/auth/auth_exceptions.dart';
import '../../../service/auth/auth_service.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var sizedBox = const SizedBox(height: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            sizedBox,
            Image.asset('assets/images/ram.jpg'),
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              child: TextField(
                controller: _email,
                enableSuggestions: false,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Enter your email here',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: TextField(
                controller: _password,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                  hintText: 'Enter your password here',
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () async {
                final email = _email.text;
                final password = _password.text;
                try {
                  AuthService.firebase().createUser(
                    email: email,
                    password: password,
                  );
                  AuthService.firebase().sendEmailVerification();
                  Navigator.of(context).pushNamed(verifyEmailRoute);
                } on EmailAlreadyInUseAuthException {
                  await showErrorDialog(
                      context, 'Ups! Email is already in use');
                } on InvalidEmailAuthException {
                  await showErrorDialog(context, 'Ups! Invalid email entered');
                } on GenericAuthException {
                  await showErrorDialog(context, 'Failed to register');
                }
              },
              child: const Text(
                'Register',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(loginRoute, (route) => false);
              },
              child: const Text(
                'Are you registered? Log in!',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
