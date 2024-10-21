import '4-util.dart';
import 'dart:convert';

calculateTotal() async {
  try {
    var userData = await fetchUserData();
    var userId = jsonDecode(userData)['id'];
    var userOrders = await fetchUserOrders(userId);

    List<dynamic> productList = jsonDecode(userOrders);
    var price = 0.0;

    for (int x = 0; x < productList.length; x++) {
      var productPrice = await fetchProductPrice(productList[x]);
      price += num.parse(productPrice);
    }
    return price;
  } catch(error) {
    return -1;
  }
}