dependencies:
  http: ^1.3.0

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
// ... (your existing printUsage() function)

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
);
 final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

