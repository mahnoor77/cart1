import 'package:cartapp/model/products.dart';

import 'package:get/get.dart';

// ignore: camel_case_types
class CartAddController extends GetxController {
  var cartItems = <Product>[].obs();
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum! + item.price);

  addtocart(Product product) {
    cartItems.add(product);
  }
}
