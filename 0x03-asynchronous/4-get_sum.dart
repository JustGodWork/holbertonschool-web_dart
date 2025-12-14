import 'dart:convert';
import '4-util.dart';

Future<num> calculateTotal() async {
    try {
        final userData = await fetchUserData();
        final user = jsonDecode(userData);
        final id = user['id'];

        final ordersData = await fetchUserOrders(id);
        final orders = jsonDecode(ordersData);

        double total = 0;

        for (final product in orders) {
            final priceData = await fetchProductPrice(product);
            final price = jsonDecode(priceData);
            total += price;
        }

        return total;
    } catch (error) {
        return -1;
    }
}
