import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resuableradiobutton extends StatefulWidget {
final  String text;
  resuableradiobutton({required this.text});
  @override
  State<resuableradiobutton> createState() => _resuableradiobuttonState();
}

class _resuableradiobuttonState extends State<resuableradiobutton> {

  String? values;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
                  widget.text,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
            Row(children: [
              Radio(
                value: "Male",
                groupValue: values,
                onChanged: (val) {
                  setState(() {
                    values = val as String?;
                  });
                },
                activeColor: Colors.purple,
                fillColor: MaterialStateProperty.all(Colors.black),
              ),
            ]),
            Text(
              "Male",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Row(children: [
              Radio(
                value: "Female",
                groupValue: values,
                onChanged: (val) {
                  setState(() {
                    values = val as String?;
                  });
                },
                activeColor: Colors.purple,
                fillColor: MaterialStateProperty.all(Colors.black),
              ),
            ]),
            Text(
              "Female",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

}


