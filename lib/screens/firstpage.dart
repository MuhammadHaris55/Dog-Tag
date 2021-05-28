import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "images/shutterstock_153013052.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.2,
                child: Center(
                  child: Image(
                    image: AssetImage(
                      "images/DogTag_logo2.png",
                    ),
                    width: MediaQuery.of(context).size.height / 4.5,
                  ),
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(52),
                    // topRight: Radius.circular(52),
                    topRight: Radius.circular(80),
                    topLeft: Radius.circular(52),
                  ),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Positioned(
                            child: Container(
                              // height: 153.09,
                              // width: 148.05,
                              width: MediaQuery.of(context).size.width / 2.9,
                              height: MediaQuery.of(context).size.height / 4.7,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "images/Path 9.png",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            // width: 145.74,
                            // height: 134.18,
                            height: MediaQuery.of(context).size.height / 5.5,
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/Path 8.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.zero,
                      child: Container(
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 2.71),
                            stops: [0.0, 1.0],
                            colors: [
                              Colors.themeColor,
                              Colors.white,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // onPressed: () {if (_user == 'Hirer') {Navigator.of(context).pushNamed('/hirer');} elseNavigator.of(context).pushNamed('/client');}Navigator.push(context,MaterialPageRoute(builder: (context) => login()),);},
                      // ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "or",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.zero,
                      child: Container(
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 2.71),
                            stops: [0.0, 1.0],
                            colors: [
                              Colors.themeColor,
                              Colors.white,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      // onPressed: () {if (_user == 'Hirer') {Navigator.of(context).pushNamed('/hirer');} elseNavigator.of(context).pushNamed('/client');}Navigator.push(context,MaterialPageRoute(builder: (context) => login()),);},
                      // ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "terms and conditions / Privacy policy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Container(
                    //   width: 200,
                    //   height: 200,
                    //   decoration: BoxDecoration(
                    //     color: Colors.black,
                    //   ),
                    // )
                  ],
                ),
              ),

              // Container(
              //   // margin: EdgeInsets.only(top: 20),
              //   height: 400,
              //   child: Container(
              //     alignment: Alignment.topRight,
              //     decoration: BoxDecoration(
              //       //
              //       image: DecorationImage(
              //         image: AssetImage(
              //           'images/Dog tag-2.png',
              //         ),
              //       ),
              //       //
              //       color: Colors.themeColor,
              //       // borderRadius: BorderRadius.circular(50)),
              //       borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(60),
              //         topRight: Radius.circular(60),
              //       ),
              //     ),
              //     child: ClipRRect(
              //       // borderRadius: BorderRadius.circular(100),
              //       child: Align(
              //         child: Container(
              //           // alignment: Alignment.topRight,
              //           // child: Center(
              //           child: Container(
              //             height: 100,
              //             width: 100,
              //             decoration: BoxDecoration(
              //               image: DecorationImage(
              //                 image: AssetImage(
              //                   'images/Dog tag-2.png',
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

//                                            BUTTON DESIGNING METHOD
RaisedButton button(String text, String _user) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    padding: EdgeInsets.zero,
    child: Container(
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            // Color.fromRGBO(223, 6, 128, 1),
            Color.fromRGBO(226, 85, 169, 1),
            Color.fromRGBO(223, 6, 128, 2),
          ],
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    // onPressed: () {if (_user == 'Hirer') {Navigator.of(context).pushNamed('/hirer');} elseNavigator.of(context).pushNamed('/client');}Navigator.push(context,MaterialPageRoute(builder: (context) => login()),);},
    // ),
  );
}
