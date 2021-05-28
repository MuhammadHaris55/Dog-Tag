import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/home.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 150,
            padding: EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Colors.themeColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.shadowColor,
                    blurRadius: 5.0,
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    Text(
                      'Contact us',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80.0),
            width: screen.width,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: Image(
                      image: AssetImage(
                        'images/Dog_Tag-02.png',
                      ),
                      width: MediaQuery.of(context).size.height / 3.1,
                    ),
                  ),
                ),
                Spacer(),
                Center(
                  child: Container(
                    width: screen.width / 1.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact the team",
                          style: TextStyle(
                            color: Colors.themeColor,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 15,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod '
                          'tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. '
                          'At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea',
                        ),
                        SizedBox(height: 10.0),
                        ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.themeColor,
                          ),
                          title: Text('+(123) 456-789'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.email,
                            color: Colors.themeColor,
                          ),
                          title: Text('Loremipsum@gmail.com'),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.only(right: 10.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  'GO TO HOME',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//GREAT JOB PAGE
// return Scaffold(
// body: Column(
// children: [
// Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(
// 'images/contact_pic.jpg',
// ),
// fit: BoxFit.cover,
// )
// ),
// height:height/4,
// ),
// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.end,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
//
// Text(
// "Great Job!",
// style: TextStyle(
// color: Colors.themeColor,
// fontSize:MediaQuery.of(context).size.width/6.5,
// fontWeight: FontWeight.bold,
// ),
// ),
// SizedBox(height: 10),
// Container(
// child: Text("Your report has been sent to all member!",
// textAlign: TextAlign.center,
// style: TextStyle(
// // backgroundColor:Colors.lightBlueAccent,
// fontSize:width/15,
// fontWeight: FontWeight.bold,
// ),
// ),
// width: width/1.4,
// height: height/9,
// ),
//
// Container(
// child: Text("You can share this app with your friend and family member to help find the missing dogs",
// textAlign: TextAlign.center,
// style: TextStyle(
// color: Colors.shadowColor,
// fontSize:width/28,
// fontWeight: FontWeight.bold,
// ),
// ),
// width: width/1.3,
// // height: height/5,
// )
// ],
// ),
// height: height - (height/5 + height/4),
// ),
// Container(
// // color: Colors.amberAccent,
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage(
// 'images/contact_pic.jpg',
// ),
// fit: BoxFit.cover,
// )
// ),
// height:height/5,
// ),
// ],
// ),
// );
