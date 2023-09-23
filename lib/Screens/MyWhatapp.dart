import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'dart:async';

class MyWhatsapp extends StatefulWidget {
  const MyWhatsapp({super.key});

  @override
  State<MyWhatsapp> createState() => _MyWhatsappState();
}

class _MyWhatsappState extends State<MyWhatsapp> {
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
            onPressed: () => context.go('/'),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.green,
              ),
              onPressed: () => context.go('/whatsapp'),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 15),
                Center(
                  child: Stack(
                    children: [
                      Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://st2.depositphotos.com/1007566/11569/v/950/depositphotos_115690782-stock-illustration-young-and-elegant-woman-avatar.jpg")),
                          )),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 4,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                                color: Colors.green),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                buildTextField(" Full Name ", " Marina Hany Amine ", false),
                buildTextField(" WhatsAppNumber ", " 01007252478 ", false),
                SizedBox(
                  height: 10,
                ),
                Center(child: MyButton3()),
                SizedBox(
                  height: 10,
                ),
                MyWhatsAppIcon(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(),
                    MyButton2(),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

//       Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//       OutlineButton(
//       padding: EdgeInsets.symmetric(horizontal: 50),
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20)),
//       onPressed: () {},
//       child: Text("CANCEL",
//           style: TextStyle(
//               fontSize: 14,
//               letterSpacing: 2.2,
//               color: Colors.black)),
//     ),
//     RaisedButton(
//       onPressed: () {},
//       color: Colors.green,
//       padding: EdgeInsets.symmetric(horizontal: 50),
//       elevation: 2,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20)),
//       child: Text(
//         "SAVE",
//         style: TextStyle(
//             fontSize: 14,
//             letterSpacing: 2.2,
//             color: Colors.white),
//         ],
//       ),
//     ),
//   ),
// );

Widget buildTextField(
    String labelText, String placeholder, bool isPasswordTextField) {
  bool showPassword = false;
  return Padding(
    padding: const EdgeInsets.only(bottom: 35.0),
    child: TextField(
      obscureText: isPasswordTextField ? showPassword : false,
      decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                )
              : null,
          contentPadding: EdgeInsets.only(bottom: 3),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText,
          hintText: placeholder,
          hintStyle: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
    ),
  );
}

void setState(Null Function() param0) {}

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          "CANCAl",
          style:
              TextStyle(fontSize: 14, letterSpacing: 2.2, color: Colors.white),
        ),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(5),
            backgroundColor: MaterialStateProperty.all(Colors.green),
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
            )));
  }
}

class MyButton2 extends StatefulWidget {
  const MyButton2({super.key});

  @override
  State<MyButton2> createState() => _MyButton2State();
}

class _MyButton2State extends State<MyButton2> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(
          "SAVE",
          style:
              TextStyle(fontSize: 14, letterSpacing: 2.2, color: Colors.white),
        ),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(5),
            backgroundColor: MaterialStateProperty.all(Colors.green),
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
            )));
  }
}

class MyButton3 extends StatefulWidget {
  const MyButton3({super.key});

  @override
  State<MyButton3> createState() => _MyButton3State();
}

class _MyButton3State extends State<MyButton3> {
  var countryCodeText= "+20";
  var numberText= "01007252478";
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
      var whatsappUrl = Uri.parse(
          "https://wa.me/967?phone=${countryCodeText + numberText}" +
              "&text=${Uri.encodeComponent("Welcome to My WhatsApp ")}");
      try {
        launchUrl(whatsappUrl);
      } catch (e) {
        debugPrint(e.toString());
      }
        },
        child: Text(
          "OPEN WHATSAPP",
          style:
              TextStyle(fontSize: 14, letterSpacing: 2.2, color: Colors.white),
        ),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(5),
            backgroundColor: MaterialStateProperty.all(Colors.green),
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
            )));
  }
}

/*
const _url = 'https://api.whatsapp.com/...';
void _launchURL() async => await canLaunch(_url)
    //? await launch(_url) : throw 'Not found $_url';
*/
/*  void launchWhatsApp({
   @required number,@required message})async{



 }*/
/*
var whatsappUrl =
    "whatsapp://send?phone=${_countryCodeController.text + _phoneController.text}";
var whatsappUrl =
     "whatsapp://send?phone=${_countryCodeController.text + _phoneController.text}" +
        "&text=${Uri.encodeComponent(_messageController.text)}";
TextEditingController _countryCodeController = TextEditingController();
TextEditingController _messageController = TextEditingController();
TextEditingController _phoneController = TextEditingController();
@override
void dispose() {
  _countryCodeController.dispose();
  _phoneController.dispose();
  _messageController.dispose();
  super.dispose();
}*/

class MyWhatsAppIcon extends StatefulWidget {
  const MyWhatsAppIcon({super.key});

  @override
  State<MyWhatsAppIcon> createState() => _MyWhatsAppIconState();
}

class _MyWhatsAppIconState extends State<MyWhatsAppIcon> {
  @override
  Widget build(BuildContext context) {
    return FlutterSocialButton(
      onTap: () {},
      buttonType: ButtonType.whatsapp,
    );
  }
}

/*
void _openWhatsAppChat()async{

  String phoneNumber ="01007252478";
  var url = Uri.parse('https://wa.me/');
  await launchUrl(url );
  
}
*/

