import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/home.dart';
import 'package:flutter_crud/screens/registerDog_2.dart';
import 'package:flutter_crud/stylingWidgets/button.dart';
import 'package:flutter_crud/stylingWidgets/textField.dart';

class registerDog_1 extends StatefulWidget {
  @override
  _registerDog_1State createState() => _registerDog_1State();
}

class NewObject {
  final String title;
  final IconData icon;

  NewObject(this.title, this.icon);
}

class _registerDog_1State extends State<registerDog_1> {
  String _user = 'Labrador Retriever';
  List _userlist = [
    'Labrador Retriever',
    'French Bulldog.',
    'Doberman Pinschers',
    ' German Shepherd',
    'Golden Retriever.',
    'Siberian Huskies',
    ' Poodle',
  ];

  // static final List<String> items = <String>[
  //   'aple',
  //   'abnsk',
  // ];
  // String value = items.first;

  String value = 'Icons.circle';
  //FOR RADIO BUTTON
  static const values = <String>['Flutter', 'Dart', 'Firebase'];
  // String selectedValue = values.first;

  final selectedColor = Colors.green;
  final unselectedColor = Colors.white;

  //FOR IconButton
  bool selected = false;
  Icon first_icon = Icon(
    Icons.circle,
    semanticLabel: 'sajdgh',
    color: Colors.themeColor,
  );
  Icon second_icon = Icon(
    Icons.check_circle,
    color: Colors.themeColor,
  );

  //FOR RADIO BUTTON
  String selectedValue = 'Boy';

  //FOR DATA PASSING
  TextEditingController textEditingController = TextEditingController();
  String dogName;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
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
                    'Tell us your dog\'s \n name',
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: screen.width / 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  R_textFormField('My dog name is...'),
                  //SENDING DATA ON NEXT PAGE
                  // TextField(
                  //   decoration: InputDecoration(labelText: 'Dog Name'),
                  //   onChanged: (val) => dogName = val,
                  // ),
                  SizedBox(height: 20.0),
                  Text('Is Tom a boy or a girl?'),
                  SizedBox(height: 20.0),
                  buildRadios(),
                  SizedBox(height: 20.0),
                  Row(
                    children: [],
                  ),
                  Text('My dog breed is...'),
                  SizedBox(height: 10.0),
                  DropdownButton(
                    isExpanded: true,
                    hint: Text(
                      'Select User Type',
                      textAlign: TextAlign.center,
                    ),
                    value: _user,
                    onChanged: (value) {
                      setState(() {
                        _user = value;
                      });
                    },
                    items: _userlist.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ),
                      );
                    }).toList(),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: selected ? second_icon : first_icon,
                        onPressed: () {
                          setState(() {
                            selected = !selected;
                          });
                        },
                      ),
                      Text('I don\'t know my dog breed'),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  R_textFormField('My dog color'),
                  SizedBox(height: 20.0),
                  R_textFormField('Description'),
                  SizedBox(height: 20.0),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: buttonDesign,
                    child: button_design(screen, "NEXT"),
                    onPressed: () {
                      // Navigator.of(context).pushNamed('/register');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => registerDog_2(
                                    dog_Name: dogName,
                                  )));
                      // builder: (context) => registerDog_2(text: textEditingController.text)));
                    },
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  //FOR RADIO BUTTON ---------------- START ----------------------------
  Widget buildRadios() => Row(
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: RadioListTile<String>(
              value: 'Boy',
              activeColor: Colors.themeColor,
              groupValue: selectedValue,
              title: Text('Boy'),
              onChanged: (value) => setState(() => selectedValue = value),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: RadioListTile<String>(
              value: 'Girl',
              activeColor: Colors.themeColor,
              groupValue: selectedValue,
              title: Text('Girl'),
              onChanged: (value) => setState(() => selectedValue = value),
            ),
          ),
          // Spacer(),
        ],
      );
  //FOR RADIO BUTTON ---------------- END ----------------------------

  // Widget buildDropdown() => DropdownButtonHideUnderline(
  //       child: DropdownButton<String>(
  //         value: value, // currently selected item
  //         items: items
  //             .map(
  //               (item) => DropdownMenuItem<String>(
  //                 child: Text(
  //                   item,
  //                   style: TextStyle(
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 20,
  //                   ),
  //                 ),
  //                 value: item,
  //               ),
  //             )
  //             .toList(),
  //         onChanged: (value) => setState(() {
  //           this.value = value;
  //         }),
  //       ),
  //     );
}
