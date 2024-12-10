```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on SocketException {
    // Handle socket exceptions specifically, perhaps showing a 'no internet connection' message
    print('No internet connection.');
    return null; // Or throw a custom exception for better context
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('Invalid JSON format: $e');
    return null;
  } catch (e) {
    print('Error fetching data: $e');
    return null; // Or throw a custom exception
  }
}
```