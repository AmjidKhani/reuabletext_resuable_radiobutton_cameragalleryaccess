import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../resuabletextfield/radioresuable.dart';
import '../resuabletextfield/resuabletextfield.dart';

class addprofile extends StatefulWidget {
  const addprofile({Key? key}) : super(key: key);

  @override
  State<addprofile> createState() => _addprofileState();
}

class _addprofileState extends State<addprofile> {
  // final networkHandler = NetworkHandler();
  bool circular = false;
  PickedFile ? _imageFile;
  final ImagePicker _picker=ImagePicker();
  String? values;

  // _imageFile;
  final _globalkey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _profession = TextEditingController();
  TextEditingController _dob = TextEditingController();
  TextEditingController _title = TextEditingController();
  TextEditingController _about = TextEditingController();
  dynamic S20 = SizedBox(
    height: 20,
  );

  //final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(top: 60),
          child: Column(
            children: [
              imageProfile(),
              S20,
              reusabletextformfield(
                hint: 'Enter Name',
                controller: _name,
              ),
              S20,
              reusabletextformfield(
                hint: 'Enter Age',
                controller: _name,
              ),
              S20,

              reusabletextformfield(
                hint: 'Enter Gender',
                controller: _name,
              ),
              S20,
              reusabletextformfield(
                hint: 'Enter Interested In',
                controller: _name,
              ),
              S20,
              //imageProfile(),
              resuableradiobutton(text: 'Gender',),
              S20,
              resuableradiobutton(text:"Interested"),

              S20,
              SizedBox(
                height: 60,
                width: 280,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20),),

                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16))
                  ),
                  child: Center(child: Text("Submit")),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage: _imageFile == null?
          AssetImage("assets/images/profile.jpeg"):
          FileImage(File(_imageFile!.path)) as ImageProvider,

        ),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.teal,
              size: 28.0,
            ),
          ),
        ),
      ]),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }
}
