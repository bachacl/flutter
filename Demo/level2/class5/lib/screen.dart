import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  late SharedPreferences prefs;

  @override
  void initState() {
    initPrefs();
    super.initState();
  }

  void initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  void setPrefs() {
    // Saving a string value
    prefs.setString('username', 'John Doe');

    // Saving an integer value
    prefs.setInt('age', 30);

    // Saving a boolean value
    prefs.setBool('isLogged', true);

    // Saving a double value
    prefs.setDouble('rating', 4.5);

    // Saving a list of strings
    prefs.setStringList('hobbies', ['Reading', 'Cooking', 'Running']);
  }

  void getPrefs() {
    // Retrieving a string value
    String? username = prefs.getString('username');
    print(username);

    // Retrieving an integer value
    int? age = prefs.getInt('age');
    print(age);

    // Retrieving a boolean value
    bool? isLogged = prefs.getBool('isLogged');
    print(isLogged);

    // Retrieving a double value
    double? rating = prefs.getDouble('rating');
    print(rating);

    // Retrieving a list of strings
    List<String>? hobbies = prefs.getStringList('hobbies');
    print(hobbies);
  }

  void removePrefs() {
    // Removing a single value
    prefs.remove('username');
  }

  void clearPrefs() {
    // Clearing all values
    prefs.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: setPrefs, child: Text('Set prefs')),
          ElevatedButton(onPressed: getPrefs, child: Text('Get prefs')),
          ElevatedButton(onPressed: removePrefs, child: Text('Remove prefs')),
          ElevatedButton(onPressed: clearPrefs, child: Text('Clear prefs'))
        ],
      ),
    );
  }
}
