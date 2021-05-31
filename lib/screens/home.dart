import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/contactUs.dart';
import 'package:flutter_crud/screens/dogInfo.dart';
import 'package:flutter_crud/screens/myProfile.dart';
import 'package:flutter_crud/screens/registerDog_1.dart';

import 'file:///E:/MAIN%20PROJECT/ChatApp/flutter_crud/lib/screens/inbox.dart';

Row drawerIconRow(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Icon(
        Icons.arrow_forward,
        color: Colors.black,
      ),
    ],
  );
}

Row drawerRow(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

// Drawer _drawer(screen) {
//   return Drawer(
//     child: Container(
//       padding: EdgeInsets.only(top: 30, left: 15),
//       color: Colors.themeColor,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: screen.width / 1.3,
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: Image(
//                     image: AssetImage(
//                       'images/drawer-profile-pic.png',
//                     ),
//                     fit: BoxFit.fill,
//                   ),
//                   radius: 25,
//                 ),
//                 SizedBox(width: 10),
//                 Wrap(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Spike',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             letterSpacing: 1,
//                           ),
//                         ),
//                         Text(
//                           'Lorem ipsum',
//                           style: TextStyle(
//                             color: Colors.white,
//                             letterSpacing: 1,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 IconButton(
//                   iconSize: 50,
//                   icon: Icon(
//                     Icons.cancel_sharp,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             width: screen.width / 1.8,
//             child: TextButton(
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => Home()));
//               },
//               child: drawerIconRow('Home'),
//             ),
//           ),
//           Container(
//             width: screen.width / 1.8,
//             child: TextButton(
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => Home()));
//               },
//               child: drawerIconRow('Inbox'),
//             ),
//           ),
//           Container(
//             width: screen.width / 1.8,
//             child: TextButton(
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => Home()));
//               },
//               child: drawerIconRow('My profile'),
//             ),
//           ),
//           Container(
//             width: screen.width / 1.8,
//             child: TextButton(
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => Home()));
//               },
//               child: drawerIconRow('My dog\'s'),
//             ),
//           ),
//           Divider(
//             thickness: 2.0,
//             color: Colors.black,
//             endIndent: screen.width / 8,
//           ),
//           Container(
//             width: screen.width / 1.8,
//             child: TextButton(
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => Home()));
//               },
//               child: drawerRow('The Dog Tag Mission'),
//             ),
//           ),
//           Container(
//             width: screen.width / 1.8,
//             child: TextButton(
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => Home()));
//               },
//               child: drawerRow('Contact us'),
//             ),
//           ),
//           Container(
//             width: screen.width / 1.8,
//             child: TextButton(
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => Home()));
//               },
//               child: drawerRow('Privacy policy'),
//             ),
//           ),
//           Container(
//             width: screen.width / 1.8,
//             child: TextButton(
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => Home()));
//               },
//               child: drawerRow('Term and conditions'),
//             ),
//           ),
//           Divider(
//             thickness: 2.0,
//             color: Colors.black,
//             endIndent: screen.width / 8,
//           ),
//           Container(
//             width: screen.width / 1.8,
//             child: TextButton(
//               onPressed: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => Home()));
//               },
//               child: drawerRow('Log out'),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

TextButton drawer_btn(String buttonText) {
  return TextButton(
    style: ButtonStyle(),
    onPressed: () {},
    child: Text(
      buttonText,
      style: TextStyle(color: Colors.white),
    ),
  );
}

Container dataContainer(screen) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    width: screen.width / 3,
    height: screen.width / 2.2,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.shadowColor,
            blurRadius: 5.0,
          ),
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: screen.width / 3,
          height: screen.width / 4,
          child: Image(
            image: AssetImage(
              'images/home-database-data.png',
            ),
          ),
        ),
        Text(
          'Zoey, Female',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 5.0),
          child: Text(
            // 'kfjghsdk lskdjf sdklfj',
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod'
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ),
      ],
    ),
  );
}

class Home extends StatefulWidget {
  static String pageTitle = "Home";
  static String routeName = "/";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.homeColor,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: Image(
      //     image: AssetImage(
      //       'images/Dog_Tag-03.png',
      //     ),
      //   ),
      //   leadingWidth: screen.width,
      //   actions: <Widget>[
      //     IconButton(
      //       color: Colors.themeColor,
      //       icon: Icon(Icons.chat_bubble_outline),
      //       onPressed: () {
      //         // showSearch(context: context, delegate: searchBar());
      //       },
      //     ),
      //     IconButton(
      //       color: Colors.themeColor,
      //       icon: Icon(Icons.menu),
      //       onPressed: () {
      //         // showSearch(context: context, delegate: searchBar());
      //       },
      //     ),
      //   ],
      // ),
      // drawer: _drawer(screen),
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
              // Container(
              //   width: screen.width / 1.8,
              //   child: TextButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => GreatJob()));
              //     },
              //     child: drawerIconRow('My dog\'s'),
              //   ),
              // ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                        onPressed: () =>
                            _scaffoldKey.currentState.openEndDrawer(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: screen.width / 1.1,
              color: Colors.homeColor,
              // margin: EdgeInsets.only(top: 105.0, bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'My report',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: screen.width / 18,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.shadowColor,
                            blurRadius: 5.0,
                          ),
                        ]),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: Column(
                      children: [
                        Text(
                          'Add your lost dog report',
                          style: TextStyle(
                            color: Colors.themeColor,
                            fontSize: screen.width / 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => registerDog_1()));
                          },
                          child: Text(
                            'ADD YOUR DOG ->',
                          ),
                          style: ButtonStyle(
                            // padding: MaterialStateProperty.all<EdgeInsets>(
                            //     EdgeInsets.all(20.0)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: BorderSide(
                                  color: Colors.themeColor,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                        text: 'Lost Dogs',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: screen.width / 18,
                        ),
                        children: [
                          TextSpan(
                            text: ' Near Me',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ]),
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.homeColor,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dogInfo()));
                            },
                            child: dataContainer(screen),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dogInfo()));
                            },
                            child: dataContainer(screen),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dogInfo()));
                            },
                            child: dataContainer(screen),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dogInfo()));
                            },
                            child: dataContainer(screen),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dogInfo()));
                            },
                            child: dataContainer(screen),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dogInfo()));
                            },
                            child: dataContainer(screen),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dogInfo()));
                            },
                            child: dataContainer(screen),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dogInfo()));
                            },
                            child: dataContainer(screen),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dogInfo()));
                            },
                            child: dataContainer(screen),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.shadowColor,
                            blurRadius: 5.0,
                          ),
                        ]),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seen a dog that looks lost?',
                          style: TextStyle(
                            color: Colors.themeColor,
                            fontSize: screen.width / 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          width: screen.width / 1.8,
                          child: Text(
                            'Report it and help get them home',
                            style: TextStyle(
                              fontSize: screen.width / 24.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => registerDog_1()));
                            },
                            child: Text(
                              'ADD REPORT     ->',
                            ),
                            style: ButtonStyle(
                              // padding: MaterialStateProperty.all<EdgeInsets>(
                              //     EdgeInsets.all(20.0)),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: BorderSide(
                                    color: Colors.themeColor,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   child: Text('ADD YOUR DOG'),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//--------------------------------------------- Image TRANSITION -starts
//   body: SizedBox(
//   width: 300,
// child: Hero(
// tag: Image.asset(
//     'images/Dog tag-2.png',
//   ),
// child: Material(
// color: Colors.transparent,
// child:
// // InkWell(
// // onTap: (){
//   Image.asset(
//     'images/Dog tag-2.png',
//     fit: BoxFit.contain,
//   // );
//
// // }
// ),
// ),
// ),
// ),
//---------------------------------------------Image TRANSITION --------------------ends

// ------------------------------------ default flutter app -----------starts
// body: Center(
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       Text(
//         'You have pushed the button this many times:',
//       ),
//       Text(
//         '$_counter',
//         style: Theme.of(context).textTheme.headline4,
//       ),
//     ],
//   ),
// ),
// floatingActionButton: FloatingActionButton(
// onPressed: _incrementCounter,
// tooltip: 'Increment',
// child: Icon(Icons.add),
// ) // This trailing comma makes auto-formatting nicer for build methods.
// ------------------------------------ default flutter app ----------- ends

//------------------------------------------ RadientColor --- starts
// body: Container(
//       decoration: BoxDecoration(
//           gradient: RadialGradient(
//             colors: [
//               Colors.white,
//               Colors.themeColor,
//             ],
//           ),
//       ),
//------------------------------------------ RadientColor --- starts
