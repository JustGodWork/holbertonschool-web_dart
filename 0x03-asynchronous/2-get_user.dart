import '2-util.dart';

Future<void> getUser() async {
    try {
        final user = await fetchUser();
        print(user);
    } catch (error) {
        print('error caught: $error');
    }
}
