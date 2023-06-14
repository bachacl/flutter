import 'dart:convert';

import 'package:http/http.dart' as http;

const baseUrl = 'https://jsonplaceholder.typicode.com/todos/1';

void fetchData() async {
  var url = Uri.parse(baseUrl);
  var response = await http.get(url);

  if (response.statusCode == 200) {
    // Request successful
    print(response.body);
  } else {
    // Error occurred
    print('Request failed with status: ${response.statusCode}');
  }
}

void sendData() async {
  var url = Uri.parse(baseUrl);
  var response = await http.post(
    url,
    body: {'name': 'John', 'age': '30'},
  );

  if (response.statusCode == 201) {
    // Request successful
    print('Data sent successfully');
  } else {
    // Error occurred
    print('Request failed with status: ${response.statusCode}');
  }
}

void fetchJsonData() async {
  var url = Uri.parse(baseUrl);
  var response = await http.get(url);

  if (response.statusCode == 200) {
    // Parse JSON response
    var jsonData = jsonDecode(response.body);
    print(jsonData['name']);
  } else {
    print('Request failed with status: ${response.statusCode}');
  }
}
