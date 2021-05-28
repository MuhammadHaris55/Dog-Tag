import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/contactUs.dart';
import 'package:flutter_crud/screens/home.dart';
import 'package:flutter_crud/screens/myProfile.dart';
import 'package:flutter_crud/stylingWidgets/textField.dart';

import 'file:///E:/MAIN%20PROJECT/ChatApp/flutter_crud/lib/screens/inbox.dart';

class dogInfo extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 15),
          color: Colors.themeColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screen.width / 1.3,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image(
                        image: AssetImage(
                          'images/drawer-profile-pic.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                      radius: 25,
                    ),
                    SizedBox(width: 10),
                    Wrap(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Spike',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(
                              'Lorem ipsum',
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      iconSize: 50,
                      icon: Icon(
                        Icons.cancel_sharp,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: screen.width / 1.8,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: drawerIconRow('Home'),
                ),
              ),
              Container(
                width: screen.width / 1.8,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Inbox()));
                  },
                  child: drawerIconRow('Inbox'),
                ),
              ),
              Container(
                width: screen.width / 1.8,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyProfile()));
                  },
                  child: drawerIconRow('My profile'),
                ),
              ),
              Container(
                width: screen.width / 1.8,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: drawerIconRow('My dog\'s'),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: Colors.black,
                endIndent: screen.width / 8,
              ),
              Container(
                width: screen.width / 1.8,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: drawerRow('The Dog Tag Mission'),
                ),
              ),
              Container(
                width: screen.width / 1.8,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ContactUs()));
                  },
                  child: drawerRow('Contact us'),
                ),
              ),
              Container(
                width: screen.width / 1.8,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: drawerRow('Privacy policy'),
                ),
              ),
              Container(
                width: screen.width / 1.8,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: drawerRow('Term and conditions'),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: Colors.black,
                endIndent: screen.width / 8,
              ),
              Container(
                width: screen.width / 1.8,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: drawerRow('Log out'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.homeColor,
        child: Stack(
          children: [
            SizedBox(height: 50),
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.shadowColor,
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 40.0, bottom: 10.0),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                'images/description-database-data.png',
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              width: screen.width / 1.1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Zoey, Female',
                                        style: TextStyle(
                                          color: Colors.themeColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: screen.width / 18,
                                        ),
                                      ),
                                      Spacer(),
                                      Image(
                                        image: AssetImage(
                                          'images/female-icon.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    width: screen.width / 1.3,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore '
                                      'et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
                                      'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum',
                                      style: TextStyle(
                                        fontSize: screen.width / 28,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screen.width / 1.1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'Dog details',
                              style: TextStyle(
                                color: Colors.themeColor,
                                fontWeight: FontWeight.bold,
                                fontSize: screen.width / 18,
                              ),
                            ),
                            R_textFormField('Description'),
                            SizedBox(height: 10),
                            R_textFormField('Size'),
                            SizedBox(height: 20),
                            Text(
                              'Owner\'s Details',
                              style: TextStyle(
                                color: Colors.themeColor,
                                fontWeight: FontWeight.bold,
                                fontSize: screen.width / 15,
                              ),
                            ),
                            R_textFormField('First Name'),
                            SizedBox(height: 10),
                            R_textFormField('Last Name'),
                            SizedBox(height: 10),
                            R_textFormField('Email'),
                            SizedBox(height: 10),
                            R_textFormField('Phone Number'),
                            SizedBox(height: 20),
                            Center(
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Contact owner',
                                ),
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.symmetric(
                                      horizontal: 25.0,
                                      vertical: 10.0,
                                    ),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(
                                        color: Colors.themeColor,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.shadowColor,
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage(
                        'images/Dog_Tag-03.png',
                      ),
                      width: screen.width / 2,
                    ),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.chat_bubble_outline),
                            color: Colors.themeColor,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Inbox()));
                            }),
                        IconButton(
                            icon: Icon(Icons.menu),
                            color: Colors.themeColor,
                            onPressed: () {
                              _scaffoldKey.currentState.openEndDrawer();
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
