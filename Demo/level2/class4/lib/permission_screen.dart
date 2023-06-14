import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionScreen extends StatefulWidget {
  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  late PermissionStatus _status;

  @override
  void initState() {
    super.initState();
    _getStatus();
  }

  Future<void> _getStatus() async {
    final status = await Permission.camera.status;
    setState(() {
      _status = status;
    });
  }

  Future<void> _requestPermission() async {
    final status = await Permission.camera.request();
    setState(() {
      _status = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permission Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Camera Permission Status: $_status',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Request Permission'),
              onPressed: _requestPermission,
            ),
          ],
        ),
      ),
    );
  }
}
