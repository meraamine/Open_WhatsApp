import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        actions: [
      IconButton(
      icon: Icon(
      Icons.settings,
        color: Colors.green,
      ), onPressed: () {  },
        ),],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16,top: 25, right:16 ),
        child: GestureDetector(
          onTap:(){ FocusScope.of(context).unfocus();},
          child: ListView(
            children: [
              Text("Edit Profile",style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.w500
              ),
              ),
              SizedBox(height: 15),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width:130 ,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor
                        ),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image:DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://st2.depositphotos.com/1007566/11569/v/950/depositphotos_115690782-stock-illustration-young-and-elegant-woman-avatar.jpg")
                        ),
                    )
      ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                      height: 40,
                      width: 40,
                      decoration:BoxDecoration(
                        shape: BoxShape.circle,
                        border:Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor
                        ) ,
                        color: Colors.green
                      ) ,
                      child: Icon(Icons.edit, color: Colors.white,),
                    ))
                  ],
    ),
    ),
              SizedBox(
                height: 35,
              ),
              buildTextField(" Full Name ", " Marina Hany Amine "),
              buildTextField(" E-mail ", " mera@gmail.com"),
              buildTextField("Password ", " ************** "),
              buildTextField(" Location ", " Maadi , Cairo ,Egypt "),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText , String placeholder ) {
    return Padding(
      padding: const EdgeInsets.only(bottom:35.0),
      child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 3),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText:labelText,
                  hintText:placeholder,
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  )
                ),
              ),
    );
  }
}
