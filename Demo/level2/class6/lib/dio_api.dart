import 'package:dio/dio.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/todos/1';

var dio = Dio();

void fetchData() async {
  try {
    var response = await dio.get(baseUrl);

    if (response.statusCode == 200) {
      // Request successful
      print(response.data);
    } else {
      // Error occurred
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    // Error occurred
    print('Error: $e');
  }
}

void sendData() async {
  try {
    var response = await dio.post(
      baseUrl,
      data: {'name': 'John', 'age': 30},
    );

    if (response.statusCode == 201) {
      // Request successful
      print('Data sent successfully');
    } else {
      // Error occurred
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    // Error occurred
    print('Error: $e');
  }
}
