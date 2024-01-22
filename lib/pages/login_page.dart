import 'package:daily_cost/models/app_user.dart';
import 'package:daily_cost/providers/app_data_provider.dart';
import 'package:daily_cost/utils/constants.dart';
import 'package:daily_cost/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;
  final _userNameController = TextEditingController(text: 'test');
  final _passwordController = TextEditingController(text: '123');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _formKey,
          child: Center(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              shrinkWrap: true,
              children: [
                const Padding(
                  padding: EdgeInsets.all(32),
                  child: Text('Welcome Back'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    controller: _userNameController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                        filled: true,
                        labelText: 'User Email'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field must not be empty';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    obscureText: isObscure,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        filled: true,
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          icon: Icon(
                              isObscure ? Icons.visibility_off : Icons.lock),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field must not net empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: _login,
                      child: const Text(
                        'Login',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void _login() async {
    if (_formKey.currentState!.validate()) {
      final userName = _userNameController.text;
      final password = _passwordController.text;

      final response =
          await Provider.of<AppDataProvider>(context, listen: false)
              .login(AppUser(
        LoginId: userName,
        password: password,
      ));
      if (!context.mounted) return;
      if (response != null) {
        debugPrint("Login Response: ${response.user.userName}");
        showMessage(context, 'Welcome Back ${response.user.userName}');
        Navigator.pushReplacementNamed(context, routeNameMyBottomBar);
      }else{
        showMessage(context, 'Login Failed');
      }
    } else {
      showMessage(context, 'Login Failed');
    }
  }

  @override
  void dispose() {
    super.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
  }
}
