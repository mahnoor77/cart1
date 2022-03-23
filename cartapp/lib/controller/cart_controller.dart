//import 'dart:ffi';

import 'package:cartapp/model/products.dart';
//import 'package:ffi/ffi.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class CartAddController extends GetxController {
  var cartItems = <Product>[].obs();
  int get count => cartItems.length;
  RxDouble bb = 0.0.obs;
  RxInt bb1 = 0.obs;

  double get tp => cartItems.fold(0, (sum, item) => sum + item.price);

  @override
  void onInit() {
    super.onInit();
    getTotalPrice();
  }

  // RxDouble totalPrice = tp1.obs;
  //double tp=totalPrice;
  //tp = totalPrice.value;
  //  ;
  double add() {
    bb.value = tp;
    //  bb.value + product.price;
    // print(bb.value);
    return bb.value;
  }

  addtocart(Product product) {
    cartItems.add(product);
    // print(product);
    //print("yes");
    /// double tp1 = 0.0;
    // tp1 = tp1 + product.price;
//bb.value = tp;
    //bb = bb.value + product.price;
    //print(bb.value);
    //return 3.0;
    //bb.value = bb.value + product.price;
    //return bb.value;
  }

  getTotalPrice() {
    bb.value = tp; //.obs();
    bb1.value = cartItems.length;
    print(bb.value);

    print(cartItems.length);
    print(bb1.value);

    // return totalPrice = totalPrice + product.price;
  }
}
