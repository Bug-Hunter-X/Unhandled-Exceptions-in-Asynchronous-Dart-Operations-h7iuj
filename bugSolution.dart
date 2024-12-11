```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Access data using jsonData['key']
        print(jsonData);
      } catch (e) {
        print('Error decoding JSON: $e');
        rethrow;
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on Exception catch (e) {
    print('Error fetching data: $e');
    // Handle the exception appropriately, for example, show an error message to the user
  } catch (e) {
    print('An unexpected error occurred: $e');
    rethrow;
  }
}
```