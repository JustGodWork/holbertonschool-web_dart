import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
    final url = Uri.https("rickandmortyapi.com", "api/character");

    try {
        final response = await http.get(url);
        final Map<String, dynamic> dedodedResponse =
            jsonDecode(utf8.decode(response.bodyBytes));
        final List<dynamic> characterResults = dedodedResponse['results'];
        for (final name in characterResults) {
            final String characterName = name['name'];
            print(characterName);
        }
    } catch (err) {
        print('error caught:$err');
    }
}
