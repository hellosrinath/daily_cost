import 'dart:math';

import 'package:daily_cost/customwidgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/login/app_user.dart';
import '../providers/app_login_provider.dart';
import '../utils/constants.dart';
import '../utils/helper_functions.dart';

class LoginPageTwo extends StatefulWidget {
  const LoginPageTwo({super.key});

  @override
  State<LoginPageTwo> createState() => _LoginPageTwoState();
}

class _LoginPageTwoState extends State<LoginPageTwo> {
  final formKey = GlobalKey<FormState>();
  Random random = Random();
  late Color myColor;
  late Size mediaSize;
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;

  @override
  void initState() {
    getSavedUserInformation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int randomValueForImage = random.nextInt(5) + 1;
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/wallpaper$randomValueForImage.jpeg"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(myColor.withOpacity(0.2), BlendMode.dstATop),
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Consumer<AppLoginProvider>(
            builder: (context, data, child) {
              return data.loading
                  ? const LoadingWidget()
                  : Stack(
                      children: [
                        Positioned(top: 80, child: _buildTop()),
                        Positioned(bottom: 0, child: _buildBottom()),
                      ],
                    );
            },
          )),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome',
            style: TextStyle(
              color: myColor,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          _buildGreyText('Please login with your information'),
          const SizedBox(height: 30),
          _buildGreyText('User Name'),
          _buildInputField(userNameController),
          const SizedBox(height: 20),
          _buildGreyText('Password'),
          _buildInputField(passwordController, isPassword: true),
          const SizedBox(height: 20),
          _buildRememberForgot(),
          const SizedBox(width: 20),
          _buildLoginButton(),
          const SizedBox(height: 20),
          _buildOtherLogin(),
        ],
      ),
    );
  }

  Center _buildOtherLogin() {
    return Center(
      child: Column(
        children: [
          _buildGreyText('Or Login with'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tab(icon: Image.asset("assets/images/facebook.png")),
              Tab(icon: Image.asset("assets/images/twitter.png")),
              Tab(icon: Image.asset("assets/images/google.png")),
            ],
          ),
        ],
      ),
    );
  }

  ElevatedButton _buildLoginButton() {
    return ElevatedButton(
      onPressed: _login,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(60),
        backgroundColor: myColor,
        foregroundColor: Colors.white,
      ),
      child: const Text('LOGIN'),
    );
  }

  void _login() async {
    if (formKey.currentState!.validate()) {
      final userName = userNameController.text;
      final password = passwordController.text;

      var provider = Provider.of<AppLoginProvider>(context, listen: false);
      final response = await provider.login(AppUser(
        LoginId: userName,
        password: password,
      ));

      if (!context.mounted) return;
      if (response != null) {
        if (provider.isBack) {
          Navigator.pushReplacementNamed(context, routeNameMyBottomBar);
          // save user info
          if (rememberUser) {
            await saveLoginUserName(userName);
            await saveLoginPassword(password);
          } else {
            await saveLoginUserName('');
            await saveLoginPassword('');
          }
        }
      } else {
        showMessage(context, 'Login Failed');
      }
    }
  }

  Row _buildRememberForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: rememberUser,
              onChanged: (value) {
                setState(() {
                  rememberUser = value!;
                });
              },
            ),
            _buildGreyText('Remember Me'),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: _buildGreyText('I forgot my password'),
        )
      ],
    );
  }

  Text _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.grey,
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.currency_exchange_sharp,
            size: 50,
            color: Colors.white,
          ),
          Text(
            "Don't Forget",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40,
              letterSpacing: 2,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInputField(TextEditingController controller,
      {isPassword = false}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon:
            isPassword ? const Icon(Icons.lock) : const Icon(Icons.done),
      ),
      obscureText: isPassword,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field must not be empty';
        }
        return null;
      },
    );
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void getSavedUserInformation() async {
    userNameController.text = await getLoginUserName();
    passwordController.text = await getLoginPassword();
    final usr = await getLoginUserName();
    if (usr.isNotEmpty) {
      rememberUser = true;
    }
  }
}
