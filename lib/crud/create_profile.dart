import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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
                onSaved: (value) {
                  name = value;
                },
                hintText: 'Name',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
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
                    ref.set({
                      'id': ref.id,
                      'Name': name,
                      'phoneNumber': phoneNumber
                    });
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
