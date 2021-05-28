import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ---------------------------------- TEXTFEILD FOR LOGIN SCREEN  -------------- STARTS -----
BoxDecoration textFeildBoxDeco() {
  return BoxDecoration(
      color: Colors.white,
      border: Border(
        top: BorderSide(
          color: Colors.shadowColor,
          style: BorderStyle.solid,
        ),
        bottom: BorderSide(
          color: Colors.shadowColor,
        ),
        right: BorderSide(
          color: Colors.shadowColor,
        ),
        left: BorderSide(
          color: Colors.shadowColor,
        ),
      ),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          // color: Colors.themeColor,
          color: Colors.shadowColor,
          blurRadius: 10.0,
          // offset: Offset(0, 10),
        ),
      ]);
}

TextFormField textFieldDesign(title, econ) {
  return TextFormField(
    cursorColor: Colors.black,
    // keyboardType: inputType,
    decoration: new InputDecoration(
      prefixIcon: Icon(
        econ,
        // Icons.person_pin,

        color: Colors.themeColor,
      ),
      border: InputBorder.none,
      // focusedBorder: InputBorder.none,
      // enabledBorder: InputBorder.none,
      // errorBorder: InputBorder.none,
      // disabledBorder: InputBorder.none,
      contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
      hintText: title,
      hintStyle: TextStyle(
        color: Color.fromRGBO(186, 186, 186, 1),
      ),
    ),
  );
}
// ---------------------------------- TEXTFEILD FOR LOGIN SCREEN  -------------- ENDS -----

// ---------------------------------- TEXTFEILD FOR LOGIN SCREEN  -------------- STARTS -----
class CommonStyle {
  static InputDecoration textFieldStyle(
      {String labelTextStr = "", String hintTextStr = ""}) {
    return InputDecoration(
      contentPadding: EdgeInsets.all(12),
      labelText: labelTextStr,
      hintText: hintTextStr,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

TextFormField R_textFormField(label) {
  return TextFormField(
    cursorColor: Colors.black,
    // keyboardType: inputType,
    // textAlign: TextAlign.start,

    decoration: new InputDecoration(
      // prefixIcon: Icon(
      //   // econ,
      //   Icons.person_pin,
      //   color: Colors.themeColor,
      // ),
      labelText: label,
      labelStyle: TextStyle(
        color: Colors.black,

        // fontWeight: FontWeight.bold,
      ),

      // focusedBorder: OutlineInputBorder(
      //   color: myFocusNode.hasFocus ? Colors.blue : Colors.black
      //   borderSide: BorderSide(color: Colors.themeColor),
      // ),

      // border: InputBorder.none,
      // focusedBorder: InputBorder.none,
      // enabledBorder: InputBorder.none,
      // errorBorder: InputBorder.none,
      // disabledBorder: InputBorder.none,
      // contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
      // hintText: "title",
      // hintStyle: TextStyle(
      //   color: Color.fromRGBO(186, 186, 186, 1),
      // ),
    ),
  );
}
// ---------------------------------- TEXTFEILD FOR LOGIN SCREEN  -------------- ENDS -----

Container textField_design(screen, String text) {
//   return Container(
//     height: 58,
//     // height: MediaQuery.of(context).size.height / 10,
//     width: screen.width / 1.1,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),
//       gradient: LinearGradient(
//         begin: Alignment(0.0, -1.0),
//         end: Alignment(0.0, 2.71),
//         stops: [0.0, 1.0],
//         colors: [
//           Colors.themeColor,
//           Colors.white,
//         ],
//       ),
//     ),
//     child: Center(
//       child: Text(
//         text,
//         style: TextStyle(
//           color: Colors.black,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ),
//   );
}
//USING THIS FOR STYLING
final ButtonStyle textFeildDesign = ElevatedButton.styleFrom(
    // padding: EdgeInsets.zero,
    // shape: const RoundedRectangleBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(10)),
    // ),
    );

ButtonStyle uttonStyle() {
  // return ElevatedButton.styleFrom(
  //   padding: EdgeInsets.zero,
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.all(Radius.circular(10)),
  //   ),
  // );
}
