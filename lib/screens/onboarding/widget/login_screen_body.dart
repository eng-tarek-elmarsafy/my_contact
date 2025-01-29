import 'package:flutter/material.dart';

import '../../../shared/themes/text.dart';
import '../../../shared/widget/action_button.dart';
import 'custom_textformfield.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  String? email, password;
  late GlobalKey<FormState> formKey;
  late TextEditingController textController;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  void initState() {
    super.initState();
    formKey = GlobalKey();
    textController = TextEditingController();
    // autovalidateMode =
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 250,
          ),
          CustomTextFormField(
            onSaved: (p0) {
              email = p0;
            },
            hintText: 'Email',
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextFormField(
            onSaved: (p0) {
              password = p0;
            },
            obscureText: true,
            hintText: 'Password',
          ),
          const SizedBox(
            height: 50,
          ),
          ActionButtom(
            width: MediaQuery.of(context).size.width,
            length: 60,
            titel: 'Login',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                setState(
                  () {
                    autovalidateMode = AutovalidateMode.always;
                  },
                );
              }
            },
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Forget my password ?',
              style: title1.merge(const TextStyle(color: Colors.blueAccent)),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ActionButtom(
            width: MediaQuery.of(context).size.width,
            length: 60,
            titel: 'Login with Google',
            onTap: () {},
          ),
          const SizedBox(
            height: 15,
          ),
          ActionButtom(
            width: MediaQuery.of(context).size.width,
            length: 60,
            titel: 'Login with Facebook',
            onTap: () {},
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Don\'t have an account',
              style: title1.merge(
                const TextStyle(color: Colors.blueAccent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
