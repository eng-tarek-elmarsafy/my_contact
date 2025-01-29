import 'package:flutter/material.dart';

import '../themes/colors.dart';
import '../themes/text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.phon,
  });

  final TextEditingController phon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: title1,
      controller: phon,
      cursorColor: white,
      decoration: InputDecoration(
        label: Text(
          'enter phen number',
          style: title1.merge(
            const TextStyle(color: Colors.grey),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            width: 1.5,
            color: orange,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: orange,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}

// class CustomTextFormField extends StatelessWidget {
//   const CustomTextFormField({
//     super.key,
//     required this.phon,
//   });

//   final TextEditingController phon;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return "The field is reqiured";
//         }
//         return null;
//       },
//       style: title1,
//       controller: phon,
//       cursorColor: white,
//       decoration: InputDecoration(
//         label: Text(
//           'enter phen number',
//           style: title1.merge(
//             const TextStyle(color: Colors.grey),
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20),
//           borderSide: BorderSide(
//             width: 1.5,
//             color: orange,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20),
//           borderSide: BorderSide(
//             color: orange,
//             width: 1.5,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomTextFormField extends StatelessWidget {
//   final String hint;
//   final Function(String?)? onSaved;
//   final void Function(String)? onChanged;
//   const CustomTextFormField(
//       {super.key, required this.hint, this.onSaved, this.onChanged});

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onChanged: onChanged,
//       onSaved: onSaved,
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'The field is required';
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         label: Text(hint),
//         border: outlineInputBorder(),
//       ),
//     );
//   }

//   OutlineInputBorder outlineInputBorder() {
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(16),
//       borderSide: BorderSide(
//         color: white,
//       ),
//     );
//   }
// }
