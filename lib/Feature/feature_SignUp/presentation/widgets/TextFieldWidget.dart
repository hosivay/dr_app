
 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget myTextField({
    required controller,
    required String label,
    required String hint,
     List<TextInputFormatter>? inputFormatters,
     required TextInputType? keyboardType
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 4),
      child: TextField(
        controller: controller,
        textDirection: TextDirection.ltr,
        inputFormatters:inputFormatters,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            hintTextDirection: TextDirection.ltr,
            enabledBorder: myinputborder(),
            focusedBorder: myfocusborder(),
            fillColor: Colors.white.withOpacity(0.8),
            filled: true),
      ),
    );
  }

  OutlineInputBorder myinputborder() {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
         );
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.blueAccent.shade100,
          width: 2,
        ));
  }