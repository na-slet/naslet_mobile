import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:naslet_mobile/ui/Buttons.dart';

import '../../common_setup/Assets.dart';
import '../../common_setup/ScreenSize.dart';
import '../../generated/l10n.dart';
import '../../services/ColorService.dart';
import '../../services/GradientService.dart';
import '../../ui/Fields.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  final colorService = Injector().get<ColorService>();

  final _textFormLoginController = TextEditingController();
  final _textFormPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.transparent,
        child: FractionallySizedBox(
          widthFactor: setWidthFactor(context),
          heightFactor: setheightFactor(context),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 134,
                height: 59,
                child: Image.asset(A.assetsAppLogo),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                S.current.signInScreenText,
                style: TextStyle(
                  color: colorService.signInScreenTitleColor(),
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              PrimaryTextField(
                labelText: S.current.signInLoginFieldHintText,
                labelStyle: TextStyle(color: colorService.secondaryGrey()),
                controller: _textFormLoginController,
              ),
              const SizedBox(
                height: 30,
              ),
              PrimaryTextField(
                labelText: S.current.signInPasswordFieldHintText,
                labelStyle: TextStyle(color: colorService.secondaryGrey()),
                obscureText: true,
                controller: _textFormPasswordController,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                child: GradinetPattern(
                  gradientStartColor: colorService.gradientStartColor(),
                  gradientEndColor: colorService.gradientEndColor(),
                  child: PrimaryButton(
                    onTap: () {},
                    title: S.current.signInButtonText,
                    color: Colors.transparent,
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 1,
                      color: colorService.signInDecorationLineColor(),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    S.current.signInAltAuthText,
                    style: TextStyle(
                      color: colorService.secondaryGrey(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: colorService.signInDecorationLineColor(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  PrimaryCircleButton(
                    onTap: () {},
                    imgPath: A.assetsAuthVkImg,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  PrimaryCircleButton(
                    onTap: () {},
                    imgPath: A.assetsAuthGoogleImg,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                S.current.signInRegQuestionText,
                style: TextStyle(
                  color: colorService.secondaryGrey(),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GradinetPattern(
                gradientStartColor: colorService.gradientStartColor(),
                gradientEndColor: colorService.gradientEndColor(),
                blendMode: BlendMode.srcIn,
                child: PrimaryTextButton(
                  onTap: () {},
                  text: S.current.signInRegButtonText,
                  textStyle: TextStyle(
                    fontSize: 12,
                    color: colorService.primaryColor(),
                    decoration: TextDecoration.underline,
                    decorationColor: colorService.primaryColor(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


