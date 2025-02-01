import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_contats_app/models/infosocial_model.dart';
import 'package:my_contats_app/models/user_model.dart';
import 'package:my_contats_app/screens/onboarding/widget/custom_textformfield.dart';
import 'package:my_contats_app/shared/widget/action_button.dart';

import '../shared/themes/text.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({super.key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  String? name, phoneNumber;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController nameTextController = TextEditingController();
  TextEditingController phoneTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create a Profile',
          style: h4,
        ),
      ),
      body: Center(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextFormField(
                controller: nameTextController,
                onSaved: (value) {
                  name = value;
                },
                hintText: 'Name',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                controller: phoneTextController,
                onSaved: (value) {
                  phoneNumber = value;
                },
                hintText: 'phon number',
              ),
              const SizedBox(
                height: 15,
              ),
              ActionButtom(
                width: MediaQuery.of(context).size.width,
                titel: 'Create a Profile',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    var ref =
                        FirebaseFirestore.instance.collection('Users').doc();
                    formKey.currentState!.save();
                    ref.set(UserModel(
                      name: name!,
                      id: ref.id,
                      image:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9SRRmhH4X5N2e4QalcoxVbzYsD44C-sQv-w&s',
                      phoneNumber: phoneNumber!,
                      socialMediaPlatforms: InfoSocialModel(
                          url:
                              'https://github.com/eng-tarek-elmarsafy/Notes-App',
                          pathIcon: 'assets/media_icons/github.png'),
                    ).toMap());
                    phoneTextController.clear();
                    nameTextController.clear();
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
