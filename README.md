


![image](https://user-images.githubusercontent.com/74248353/186896600-121a13fb-99c2-49d9-a87c-c16e9f4c3637.png)
![image](https://user-images.githubusercontent.com/74248353/186897339-42d57ec2-ec53-4863-a172-4ed6decb8d0c.png)












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
    
    
    
    
    
    
    
    
    
    
    
    
    
    ![image](https://user-images.githubusercontent.com/74248353/186897207-6ced0193-51a8-4597-8a27-9891d641e460.png)

    
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
