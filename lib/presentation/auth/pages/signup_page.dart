import 'package:flutter/material.dart';
import 'package:flutter_spotify/common/widgets/appbar/app_bar.dart';
import 'package:flutter_spotify/common/widgets/button/basic_app_button.dart';
import 'package:flutter_spotify/core/configs/assets/app_vectors.dart';
import 'package:flutter_spotify/presentation/auth/pages/signin_page.dart';
import 'package:flutter_svg/svg.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: _signinText(context),
        appBar: BasicAppBar(
          title: SvgPicture.asset(AppVectors.logo, height: 40, width: 40),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _registerText(),
              const SizedBox(height: 25),
              _fullNameField(context),
              const SizedBox(height: 15),
              _emailField(context),
              const SizedBox(height: 15),
              _passwordField(context),
              const SizedBox(height: 15),
              BasicAppButton(title: 'Criar Conta', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _registerText() {
  return const Text(
    'Cadastrar',
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget _fullNameField(BuildContext context) {
  return TextField(
    decoration: const InputDecoration(
      hintText: 'Nome completo',
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
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

Widget _signinText(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Já é cadastrado?',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SigninPage()),
            );
          },
          child: const Text('Faça login'),
        ),
      ],
    ),
  );
}
