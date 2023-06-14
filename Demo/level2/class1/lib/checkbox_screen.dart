import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  @override
  _CheckboxScreenState createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  bool? _isChecked1 = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Example'),
      ),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
            title: Text('Option 1'),
            value: _isChecked1,
            onChanged: (value) {
              setState(() {
                _isChecked1 = value;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Option 2'),
            value: _isChecked2,
            onChanged: (value) {
              setState(() {
                _isChecked2 = value;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Option 3'),
            value: _isChecked3,
            onChanged: (value) {
              setState(() {
                _isChecked3 = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
