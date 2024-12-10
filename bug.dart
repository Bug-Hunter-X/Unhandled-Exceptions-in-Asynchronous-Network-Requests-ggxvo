```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      //Use jsonData
    } else {
      //Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, including network errors
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it differently based on your app's needs.
  }
}
```