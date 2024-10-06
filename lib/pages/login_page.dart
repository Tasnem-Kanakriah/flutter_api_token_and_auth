import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../services/auth_service.dart';
import 'my_info_page.dart';

class LogInPage extends StatelessWidget {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 360,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: username,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: password,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FilledButton(
                onPressed: () async {
                  bool status = await login(
                    UserModel(username: username.text, password: password.text),
                  );
                  if (status) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Success'),
                      backgroundColor: Colors.green,
                    ));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const MyInfoPage();
                      }),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Failed'),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
                child: const Text('Log In'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
