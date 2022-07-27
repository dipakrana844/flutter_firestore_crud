import 'package:flutter/material.dart';

class AddStudentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddStudentPage();
}

class _AddStudentPage extends State<AddStudentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Add Student Page',
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}
