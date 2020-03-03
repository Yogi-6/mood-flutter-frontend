import 'package:mood_frontend/screens/registration_screen.dart';
import 'package:mood_frontend/widgets/button_form.dart';
import 'package:mood_frontend/widgets/form_caption_link.dart';
import 'package:mood_frontend/widgets/form_container.dart';
import 'package:mood_frontend/widgets/hero_text.dart';
import 'package:mood_frontend/widgets/input_field_form.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HeroText(
              animationDelay: 1.2,
              heroText: ["Login"],
              heroTextSize: 40.0,
            ),
            SizedBox(
              height: 30,
            ),
            FormContainer(
              animationDelay: 1.5,
              formBorderRadius: 10.0,
              formPadding: 10.0,
              child: Column(
                children: <Widget>[
                  InputFieldForm(
                    inputType: TextInputType.emailAddress,
                    isObscure: false,
                    hint: 'Email or Phone number',
                    border: Border(
                      bottom: BorderSide(color: Colors.grey[300]),
                    ),
                  ),
                  InputFieldForm(
                    isObscure: true,
                    inputType: TextInputType.text,
                    hint: 'Password',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ButtonForm(
              animationDelay: 1.8,
              buttonText: 'Login',
              buttonWidth: 120.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: CaptionLinkForm(
                animationDelay: 1.8,
                text: 'New User?',
                textSize: 14.0,
                linkText: 'Sign up',
                onLinkTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: RegistrationScreen(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
