import 'package:flutter/material.dart';
import 'package:asynchronous_coffe/core.dart';
import '../controller/Login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              suffixIcon: Icon(
                                Icons.email,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                              ),
                              helperText: 'Enter your email address',
                            ),
                            onChanged: (value) {
                              controller.email = value;
                            },
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            margin: const EdgeInsets.only(),
                            child: TextFormField(
                              initialValue: '',
                              maxLength: 20,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                                suffixIcon: Icon(
                                  Icons.password,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                helperText: 'Enter your password',
                              ),
                              onChanged: (value) {
                                controller.pasword = value;
                              },
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                            ),
                            onPressed: () => controller.doEmailLogin(),
                            child: const Text("Login"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
