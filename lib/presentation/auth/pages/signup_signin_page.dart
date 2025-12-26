import 'package:flutter/material.dart';
import 'package:flutter_spotify/common/helpers/is_dark_mode.dart';
import 'package:flutter_spotify/common/widgets/appbar/app_bar.dart';
import 'package:flutter_spotify/common/widgets/button/basic_app_button.dart';
import 'package:flutter_spotify/core/configs/assets/app_images.dart';
import 'package:flutter_spotify/core/configs/assets/app_vectors.dart';
import 'package:flutter_spotify/core/configs/theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupSigninPage extends StatelessWidget {
  const SignupSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: <Widget>[
            const BasicAppBar(),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(AppVectors.topPattern),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(AppVectors.bottomPattern),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(AppImages.authBG),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(AppVectors.logo),
                    const SizedBox(height: 55),
                    Text(
                      'Aproveite para ouvir música',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: context.isDarkMode
                            ? AppColors.lightBackground
                            : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 21),
                    const Text(
                      'O Spotify é um provedor de serviços de streaming de áudio e mídia sueco.',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: BasicAppButton(
                            title: 'Registrar',
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Entrar',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
