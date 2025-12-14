import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
    try {
        final data = await fetchUserData();
        final parsed = jsonDecode(data);
        return 'Hello ${parsed['username']}';
    } catch (error) {
        return 'error caught: $error';
    }
}

Future<String> loginUser() async {
    try {
        final valid = await checkCredentials();
        print('There is a user: $valid');

        if (valid) {
            return await greetUser();
        } else {
            return 'Wrong credentials';
        }
    } catch (error) {
        return 'error caught: $error';
    }
}
