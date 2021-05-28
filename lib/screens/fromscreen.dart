import 'package:flutter/material.dart';
import 'package:flutter_crud/stylingWidgets/button.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String _name;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Enter Your Name",
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
      child: Form(
        child: Column(
          children: [
            _buildNameField(),
            SizedBox(height: 10),
            ElevatedButton(
              style: buttonDesign,
              child: button_design(screen, "Register"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
