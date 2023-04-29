import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_ui/presentation/login/widgets/text_field_widget.dart';
import 'package:instagram_ui/presentation/login/widgets/text_field_password_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/instagram_logo.png",
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 56),
                          const TextFieldWidget(
                            hintText: 'Username',
                          ),
                          const SizedBox(height: 12),
                          const TextFieldPasswordWidget(),
                          const SizedBox(height: 19),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                'Forgot Password',
                                style: TextStyle(
                                    color: Color(0xFF3797EF),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Get.offNamed('/home');
                              }
                            },
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                  const Size.fromHeight(48)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF3797EF)),
                              elevation: MaterialStateProperty.all(0),
                              overlayColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 36, 135, 227)),
                            ),
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      )),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 0.5, color: Colors.black26))),
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Don’t have an account?'),
                      Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
