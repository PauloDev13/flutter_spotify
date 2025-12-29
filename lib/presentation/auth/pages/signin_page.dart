import 'package:flutter/material.dart';
import 'package:flutter_spotify/common/widgets/appbar/app_bar.dart';
import 'package:flutter_spotify/common/widgets/button/basic_app_button.dart';
import 'package:flutter_spotify/core/configs/assets/app_vectors.dart';
import 'package:flutter_spotify/presentation/auth/pages/signup_page.dart';
import 'package:flutter_svg/svg.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: _signupText(context),
        appBar: BasicAppBar(
          title: SvgPicture.asset(AppVectors.logo, height: 40, width: 40),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _registerText(),
              const SizedBox(height: 20),
              _emailField(context),
              const SizedBox(height: 20),
              _passwordField(context),
              const SizedBox(height: 20),
              BasicAppButton(title: 'Entrar', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _registerText() {
  return const Text(
    'Login',
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget _emailField(BuildContext context) {
  return TextField(
    decoration: const InputDecoration(
      hintText: 'Insira o Email',
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _passwordField(BuildContext context) {
  return TextField(
    decoration: const InputDecoration(
      hintText: 'Insira a Senha',
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _signupText(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Não tem cadastro?',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SignupPage()),
            );
          },
          child: const Text('Cadastre-se'),
        ),
      ],
    ),
  );
}
