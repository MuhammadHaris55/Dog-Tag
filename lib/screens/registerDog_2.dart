import 'package:flutter/material.dart';

class registerDog_2 extends StatefulWidget {
  @override
  _registerDog_2State createState() => _registerDog_2State();
}

class _registerDog_2State extends State<registerDog_2> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 25.0, right: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Column(
                    children: [
                      Image(
                        width: screen.width / 2.0,
                        image: AssetImage(
                          'images/Dog_Tag-02.png',
                        ),
                      ),
                      Text(
                        'steps 1 of 3',
                        style: TextStyle(
                          fontSize: screen.width / 35,
                        ),
                      ),
                    ],
                  ),
                  IconButton(icon: Icon(Icons.help), onPressed: () {})
                ],
              ),
            ),
            Container(
              width: screen.width / 1.1,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'How big is Tom?',
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: screen.width / 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.themeColor,
                                  borderRadius: BorderRadius.circular(25.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.shadowColor,
                                      blurRadius: 5.0,
                                    ),
                                  ]),
                              width: screen.width / 2.5,
                              height: screen.width / 2.5,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 30.0),
                              child: Text('dsg'),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.themeColor,
                                  borderRadius: BorderRadius.circular(25.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.shadowColor,
                                      blurRadius: 5.0,
                                    ),
                                  ]),
                              width: screen.width / 2.5,
                              height: screen.width / 2.5,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 30.0),
                              child: Image(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
