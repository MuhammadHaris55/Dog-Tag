import 'package:flutter/material.dart';
import 'package:flutter_crud/screens/registerDog_2.dart';
import 'package:flutter_crud/stylingWidgets/button.dart';
import 'package:flutter_crud/stylingWidgets/button_widget.dart';
import 'package:flutter_crud/stylingWidgets/textField.dart';

class registerDog1 extends StatefulWidget {
  @override
  _registerDog1State createState() => _registerDog1State();
}

class NewObject {
  final String title;
  final IconData icon;

  NewObject(this.title, this.icon);
}

class _registerDog1State extends State<registerDog1> {
  String _user = 'Hirer';
  List _userlist = ['Hirer', 'Client'];

  static final List<String> items = <String>[
    'aple',
    'abnsk',
  ];
  String value = items.first;

  //FOR RADIO BUTTON
  static const values = <String>['Flutter', 'Dart', 'Firebase'];
  // String selectedValue = values.first;

  final selectedColor = Colors.green;
  final unselectedColor = Colors.white;

  int selectedValue = 0;
  //FOR RADIO BUTTON

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
                      IconButton(icon: Icon(Icons.circle), onPressed: () {}),
                      Text('I don\'t know my dog breed'),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  R_textFormField('My dog color'),
                  SizedBox(height: 20.0),
                  R_textFormField('Description'),
                  SizedBox(height: 30.0),
                  ElevatedButton(
                    style: buttonDesign,
                    child: button_design(screen, "NEXT"),
                    onPressed: () {
                      // Navigator.of(context).pushNamed('/register');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => registerDog_2()));
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
  Widget buildRadios() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 2,
              child: Radio<int>(
                value: 1,
                groupValue: selectedValue,
                onChanged: (value) => setState(() => selectedValue = 1),
              ),
            ),
            const SizedBox(height: 32),
            ButtonWidget(
              text: 'Select Radio',
              onClicked: () => setState(() => selectedValue = 1),
            ),
            const SizedBox(height: 16),
            ButtonWidget(
              text: 'Unselect Radio',
              onClicked: () => setState(() => selectedValue = 0),
            ),
          ],
        ),
      );
  //FOR RADIO BUTTON ---------------- END ----------------------------

  Widget buildDropdown() => DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value, // currently selected item
          items: items
              .map(
                (item) => DropdownMenuItem<String>(
                  child: Text(
                    item,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  value: item,
                ),
              )
              .toList(),
          onChanged: (value) => setState(() {
            this.value = value;
          }),
        ),
      );
}
