


![image](https://user-images.githubusercontent.com/74248353/186896600-121a13fb-99c2-49d9-a87c-c16e9f4c3637.png)











Circular profile Image  Widget






/////////////////////////////////////////

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
