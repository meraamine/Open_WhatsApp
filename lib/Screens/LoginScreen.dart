import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:colors_stuff/colors_stuff.dart';
import 'package:go_router/go_router.dart';

class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  bool isRememberMe = false;
  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff5ac18e),
                ),
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff5ac18e),
                ),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.black38)),
          ),
        )
      ],
    );
  }

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.bottomRight,
      child: TextButton(
        onPressed: () => print(" Forgot Password pressed "),
        //padding:EdgeInsets.only(right: 0),
        child: Text("Forgot Password?",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget buildRememberMe() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value!;
                  });
                },
              )),
          Text(
            "Remember Me",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 5, shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        )
        ),
        onPressed: () => context.go('/Profile')
        /*print(" Login Pressed  ")*/,
        child: Text('LOGIN ' , style: TextStyle(
          color: Color(0xff5ac18e),
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }

  Widget buildSignUpBtn(){
    return GestureDetector(
      onTap: () =>print(" Sign Up Pressed "),
      child:RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Don\'t have an Account? ",
              style: TextStyle(color: Colors.white
              , fontSize: 18, fontWeight: FontWeight.w500)
            ),
            TextSpan(
                text: "Sign Up",
                style: TextStyle(color: Colors.white
                    , fontSize: 18, fontWeight: FontWeight.bold)
            )
          ]
        ),
      ) ,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
            child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0x665ac18e),
                    Color(0x995ac18e),
                    Color(0xcc5ac18e),
                    Color(0xff5ac18e),
                  ])),
              child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      SizedBox(height: 20),
                      buildRememberMe(),
                      buildLoginBtn(),
                      buildSignUpBtn()
                    ],
                  )),
            )
          ],
        )),
      ),
    );
  }
}
