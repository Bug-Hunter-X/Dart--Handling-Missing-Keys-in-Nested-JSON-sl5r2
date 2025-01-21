```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Correct way to access nested JSON data
      final nestedValue = jsonData['nested']?['value'];

      if(nestedValue != null){
        //Process the data
        print(nestedValue);
      } else {
        print("Nested Value is missing");
      }

    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error
  }
}
```