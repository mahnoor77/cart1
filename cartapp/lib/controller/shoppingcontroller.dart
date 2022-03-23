import 'package:cartapp/model/products.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  // ignore: deprecated_member_use
  var products = <Product>[].obs;
  RxDouble totalPrice1 = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));

    var serverResponse = [];

    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: "abd",
          productImage: "img",
          productName: "apple"),
      Product(
          id: 2,
          price: 40,
          productDescription: "abd",
          productImage: "img",
          productName: "banana"),
      Product(
          id: 2,
          price: 49.5,
          productDescription: "abd",
          productImage: "img",
          productName: "carrot"),
    ];
    products.value = productResult;
  }
}
