import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/home.dart';
import 'package:flutter_crud/stylingWidgets/button.dart';
import 'package:flutter_crud/stylingWidgets/textField.dart';

class Register extends StatefulWidget {
  static String pageTitle = "Register";
  static String routeName = "/register";

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: width / 1.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  height: height / 5,
                  width: width / 1.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/Dog_Tag-03.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Owner\'s Details',
                        style: TextStyle(
                          color: Colors.themeColor,
                          fontWeight: FontWeight.bold,
                          fontSize: width / 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      R_textFormField('First Name'),
                      SizedBox(height: 10),
                      R_textFormField('Last Name'),
                      SizedBox(height: 10),
                      R_textFormField('Email'),
                      SizedBox(height: 10),
                      R_textFormField('Password'),
                      SizedBox(height: 10),
                      R_textFormField('Phone Number'),
                      SizedBox(height: 10),
                      R_textFormField('Address'),
                      SizedBox(height: 10),
                      R_textFormField('Zip Code'),
                      SizedBox(height: 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            color: Colors.themeColor,
                            icon: Icon(Icons.circle),
                          ),
                          Expanded(
                            child: Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna"),
                          )
                        ],
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        style: buttonDesign,
                        child: button_design(screen, "Register"),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Text(
                          "terms and conditions / Privacy policy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
