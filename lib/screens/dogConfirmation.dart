import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/greatJob.dart';
import 'package:flutter_crud/stylingWidgets/button.dart';
import 'package:flutter_crud/stylingWidgets/textField.dart';

class dogConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: Center(
          child: Text(
            'Confirmation',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image(
                        image: AssetImage(
                          'images/confirmationPic.png',
                          // 'images/My_profile.png',
                        ),
                      ),
                      Positioned(
                        bottom: 20.0,
                        left: 20.0,
                        child: Text(
                          'I\'m Spike',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screen.width / 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
                width: screen.width / 1.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    R_textFormField('My dog breed is...'),
                    SizedBox(height: 10.0),
                    R_textFormField('Description'),
                    SizedBox(height: 30.0),
                    Text(
                      'Dog details',
                      style: TextStyle(
                        color: Colors.themeColor,
                        fontWeight: FontWeight.bold,
                        fontSize: screen.width / 18,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    R_textFormField('Size'),
                    SizedBox(height: 20.0),
                    Text(
                      'Gender',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Boy',
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Your profile is almost complete',
                      style: TextStyle(
                        color: Colors.themeColor,
                        fontWeight: FontWeight.bold,
                        fontSize: screen.width / 15,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      style: buttonDesign,
                      child: button_design(screen, "Register"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GreatJob()));
                      },
                    ),
                    SizedBox(height: 20.0),
                  ],
                )),
            // Container(
            //   padding: EdgeInsets.only(top: screen.height / 1.8),
            //   child: Center(
            //     child: Container(
            //       width: screen.width / 1.1,
            //       // height: screen.height / 2,
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Spacer(),
            //           Text(
            //             'Description',
            //             style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: screen.width / 20,
            //             ),
            //           ),
            //           SizedBox(height: 10.0),
            //           Text(
            //             'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut '
            //             'labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores '
            //             // 'et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. '
            //             // 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut '
            //             // 'labore et dolore magna aliquyam erat, sed diam'
            //             ,
            //             style: TextStyle(
            //               fontSize: screen.width / 25,
            //             ),
            //           ),
            //           Spacer(),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Container(
            //   padding: EdgeInsets.only(top: 20.0),
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(25.0),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.shadowColor,
            //           blurRadius: 5.0,
            //         ),
            //       ]),
            //   child: Image(
            //     image: AssetImage(
            //       'images/My_profile.png',
            //     ),
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.only(top: 55.0),
            //   padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(25.0),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.shadowColor,
            //           blurRadius: 5.0,
            //         ),
            //       ]),
            //   width: screen.width / 1.1,
            //   height: screen.width / 2.9,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Row(
            //         children: [
            //           Text(
            //             'Spike',
            //             style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: screen.width / 18,
            //             ),
            //           ),
            //           Spacer(),
            //           Image(
            //             image: AssetImage(
            //               'images/male-icon.png',
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(height: 10.0),
            //       Container(
            //         width: screen.width / 1.3,
            //         child: Text(
            //           'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod '
            //           'tempor invidunt ut labore '
            //           // 'et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. '
            //           // 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum'
            //           ,
            //           style: TextStyle(
            //             fontSize: screen.width / 32,
            //           ),
            //         ),
            //       ),
            //       SizedBox(height: 20.0),
            //     ],
            //   ),
            // ),
            // Container(
            //   color: Colors.black,
            //   padding: EdgeInsets.only(
            //     left: 10.0,
            //     right: 10.0,
            //     top: 30.0,
            //     bottom: 20.0,
            //   ),
            //   child: Row(
            //     children: [
            //       IconButton(
            //           icon: Icon(
            //             Icons.arrow_back_ios,
            //             color: Colors.white,
            //           ),
            //           onPressed: () {
            //             Navigator.of(context).pop();
            //           }),
            //       SizedBox(width: 90.0),
            //       Text(
            //         'My profile',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 18.0,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
