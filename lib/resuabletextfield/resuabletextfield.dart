import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reusabletextformfield extends StatelessWidget {
  String? title;

  //String labelText;
  String hint;
  TextEditingController controller;

  reusabletextformfield({
    //required this.labelText,
    required this.hint,
    required this.controller,
  });

  static final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0,
        right: 15.0,
      ),
      child: SingleChildScrollView(
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.text,
          style: TextStyle(fontSize: 20, color: Colors.blue),
          decoration: InputDecoration(
            // labelText:labelText,
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          validator: (value) {},
        ),
      ),
    );
  }
}
