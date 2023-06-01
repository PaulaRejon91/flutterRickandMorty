import 'package:flutter/material.dart';
import 'package:rickandmorty/ui/pages/search_page.dart';
import '../../data/repositories/repository.dart';
import '../../service/auth/auth_service.dart';
import 'loginAndRegister/login_page.dart';
import 'loginAndRegister/verifyEmail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.title});
  final String title;
  final repository = Repository();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: AuthService.firebase().initialize(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = AuthService.firebase().currentUser;
              if (user != null) {
                if (user.isEmailVerified) {
                  return const SearchPage();
                } else {
                  return const VerifyEmailView();
                }
              } else {
                return const LoginView();
              }
            default:
              return const CircularProgressIndicator();
          }
        });
  }
}

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Colors.black54,
  //       centerTitle: true,
  //       title: Text(
  //         title,
  //         style: Theme.of(context).textTheme.displaySmall,
  //       ),
  //     ),
  //     body: Container(
  //         decoration: const BoxDecoration(color: Colors.black87),
  //         child: const SearchPage()),
  //   );
  // }
// }
// 